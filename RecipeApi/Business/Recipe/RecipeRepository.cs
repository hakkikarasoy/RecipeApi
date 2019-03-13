using Entities;
using Objects.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Business
{
    public class RecipeRepository : IRecipeRepository
    {
        public List<RecipeListResponse> GetAllRecipes()
        {
            RecipeMasterContext context = new RecipeMasterContext();

            var list = context.Recipe.Where(r => !r.IsDeleted && r.IsVisible).Select(r =>
            new RecipeListResponse
            {
                Title = r.Title,
                Categories = r.RecipeCategory.Select(s => s.Category.Name).ToList(),
                Directions = r.Directions.Select(s => new DirectionDto { Step = s.Step }).FirstOrDefault() ?? new DirectionDto { Step = "" },
                Ingredients = r.Ingredient.Select(s => new IngredientDto
                {
                    Amount = new Amount
                    {
                        Quantity = s.Quantity != null ? s.Quantity.Value.ToString() : "",
                        Unit = s.Unit.Name ?? ""
                    },
                    Name = s.Name
                }).ToList()
            }
            ).ToList();

            return list;
        }

        public List<string> GetAllCategories()
        {
            RecipeMasterContext context = new RecipeMasterContext();

            var list = context.Category.Where(c => !c.IsDeleted && c.IsVisible).Select(c =>  c.Name).ToList();

            return list;
        }

        public ResultObject AddRecipe(RecipeRequest recipeRequest)
        {
            ResultObject resultObject = new ResultObject();
            try
            {
                RecipeMasterContext context = new RecipeMasterContext();
                #region Validation
                if (string.IsNullOrEmpty(recipeRequest.Title))
                {
                    resultObject.IsSucceed = false;
                    resultObject.Message = "Yemek tarifi adı giriniz";
                    return resultObject;
                }

                var recipeFromDb = context.Recipe.Where(r => r.Title == recipeRequest.Title).FirstOrDefault();
                if (recipeFromDb != null)
                {
                    resultObject.IsSucceed = false;
                    resultObject.Message = "Yemek tarifi daha önce eklenmiş";
                    resultObject.HttpResponseCode = 409;

                    return resultObject;
                }
                #endregion
                var recipe = new Recipe();
                recipe.RecipeId = Guid.NewGuid();
                recipe.Title = recipeRequest.Title;
                context.Recipe.Add(recipe);

                foreach (var name in recipeRequest.Categories)
                {
                    if (!string.IsNullOrEmpty(name))
                    {
                        var newName = name.Trim();
                        var categoriIdFromDb = context.Category.Where(c => c.Name == newName).Select(c => c.CategoryId).FirstOrDefault();

                        if (categoriIdFromDb != null && categoriIdFromDb != Guid.Empty)
                        {
                            var recipeCategori = new RecipeCategory();
                            recipeCategori.RecipeId = recipe.RecipeId;
                            recipeCategori.CategoryId = categoriIdFromDb;
                            context.RecipeCategory.Add(recipeCategori);
                        }
                        else
                        {
                            resultObject.IsSucceed = false;
                            resultObject.Message = $"{newName} kategorisi sistemde kayıtlı değil";
                            return resultObject;
                        }
                    }
                }

                foreach (var item in recipeRequest.Ingredients)
                {
                    var amount = item.Amount;
                    if (!string.IsNullOrEmpty(amount.Unit))
                    {
                        var unitName = amount.Unit.Trim();

                        var unitIdFromDb = context.Unit.Where(u => u.Name == unitName).Select(u => u.UnitId).FirstOrDefault();
                        if (unitIdFromDb != null && unitIdFromDb != Guid.Empty)
                        {
                            var ingredient = new Ingredient();
                            ingredient.Name = item.Name;
                            ingredient.UnitId = unitIdFromDb;
                            ingredient.RecipeId = recipe.RecipeId;
                            if (string.IsNullOrEmpty(amount.Quantity))
                            {
                                ingredient.Quantity = null;
                            }
                            else
                            {
                                ingredient.Quantity = Convert.ToInt32(amount.Quantity);
                            }
                        }

                        else
                        {
                            resultObject.IsSucceed = false;
                            resultObject.Message = $"{unitName} birimi sistemde kayıtlı değil";
                            return resultObject;
                        }

                    }
                }

                var directions = new Directions();
                directions.RecipeId = recipe.RecipeId;
                directions.Step = recipeRequest.Directions.Step;
                context.Directions.Add(directions);

                context.SaveChanges();
                resultObject.IsSucceed = true;
                resultObject.Message = "Kayıt başarıyla kaydedildi";
            }
            catch (Exception ex)
            {
                resultObject.IsSucceed = false;
                resultObject.Message = ex.Message;
            }

            return resultObject;
        }
    }
}
