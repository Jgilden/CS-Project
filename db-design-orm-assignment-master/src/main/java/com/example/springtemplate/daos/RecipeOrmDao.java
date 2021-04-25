package com.example.springtemplate.daos;

import com.example.springtemplate.models.Recipe;
import com.example.springtemplate.repositories.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class RecipeOrmDao {
    @Autowired
    RecipeRepository recipeRepository;

    @PostMapping("/api/recipes")
    public Recipe createRecipe(@RequestBody Recipe recipe) {
        return recipeRepository.save(recipe);
    }

    @GetMapping("/api/recipes")
    public List<Recipe> findAllRecipes() {
        return recipeRepository.findAllRecipes();
    }

    @GetMapping("/api/recipes/{recipeId}")
    public Recipe findRecipeById(
            @PathVariable("recipeId") Integer id) {
        return recipeRepository.findRecipeById(id);
    }

    @PutMapping("/api/recipes/{recipeId}")
    public Recipe updateRecipe(
            @PathVariable("recipeId") Integer id,
            @RequestBody Recipe recipeUpdates) {
        Recipe recipe = recipeRepository.findRecipeById(id);
        recipe.setRecipeName(recipeUpdates.getRecipeName());
        recipe.setPrepTime(recipeUpdates.getPrepTime());
        recipe.setCookTime(recipeUpdates.getCookTime());
        recipe.setServingSize(recipeUpdates.getServingSize());
        recipe.setDietaryRestriction(recipeUpdates.getDietaryRestriction());
        recipe.setUser(recipeUpdates.getUser());
        return recipeRepository.save(recipe);
    }

    @DeleteMapping("/api/recipes/{userId}")
    public void deleteRecipe(
            @PathVariable("recipeId") Integer id) {
        recipeRepository.deleteById(id);
    }
}