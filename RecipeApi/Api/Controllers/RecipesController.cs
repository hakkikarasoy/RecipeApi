using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entities;
using Objects.Models;
using Business;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Api.Controllers
{
    [Route("services/recipe")]
    [ApiController]
    public class RecipesController : ControllerBase
    {
        IRecipeRepository _recipeRepository;

        public RecipesController(IRecipeRepository recipeRepository)
        {
            _recipeRepository = recipeRepository;
        }

        [HttpPost("all")]
        public ActionResult<RecipesResponse> GetAllRecipes()
        {
            var recipesResponse = new RecipesResponse();
            var list = _recipeRepository.GetAllRecipes();
            recipesResponse.Recipes = list;
            recipesResponse.Results = true;
            recipesResponse.Total = list.Count();
            if (recipesResponse.Total == 0)
            {
                return NoContent();
            }
            return recipesResponse;
        }

        [HttpGet("filter/categories")]
        public ActionResult<CategoriesResponse> GetAllCategories()
        {
            var categoriesResponse = new CategoriesResponse();
            var list = new RecipeRepository().GetAllCategories();
            categoriesResponse.Categories = list;
            categoriesResponse.Results = true;
            categoriesResponse.Total = list.Count();
            if (categoriesResponse.Total == 0)
            {
                return NoContent();
            }
            return categoriesResponse;
        }

        [HttpPut("add")]
        public object Put([FromBody] RecipeRequest value)
        {
            var result = _recipeRepository.AddRecipe(value);
            if (result.HttpResponseCode == 409)
            {
                return Conflict();
            }
            else
            {
                return Ok(JsonConvert.SerializeObject(result));
            }
        }
    }
}
