using Entities;
using Objects.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Business
{
    public interface IRecipeRepository
    {
        List<RecipeListResponse> GetAllRecipes();
        List<string> GetAllCategories();

        ResultObject AddRecipe(RecipeRequest recipeRequest);
    }
}
