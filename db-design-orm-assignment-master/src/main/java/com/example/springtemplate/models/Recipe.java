package com.example.springtemplate.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="recipes")
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer recipeId;
    private String recipeName;
    private String instructions;
    private Integer prepTime;
    private Integer cookTime;
    private Integer servingSize;

    @Enumerated(EnumType.STRING)
    private DietaryRestriction dietaryRestriction;

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "recipe")
    private List<RecipeIngredient> recipeIngredients;

    public Integer getRecipeId() { return recipeId; }
    public void setRecipeId(Integer recipeId) { this.recipeId = recipeId; }

    public String getRecipeName() { return recipeName; }
    public void setRecipeName(String recipeName) { this.recipeName = recipeName; }

    public String getInstructions() { return instructions; }
    public void setInstructions(String instructions) { this.instructions = instructions; }

    public Integer getPrepTime() { return prepTime; }
    public void setPrepTime(Integer prepTime) { this.prepTime = prepTime; }

    public Integer getCookTime() { return cookTime; }
    public void setCookTime(Integer cookTime) { this.cookTime = cookTime; }

    public Integer getServingSize() { return servingSize; }
    public void setServingSize(Integer servingSize) { this.servingSize = servingSize; }

    public DietaryRestriction getDietaryRestriction() { return dietaryRestriction; }
    public void setDietaryRestriction(DietaryRestriction dietaryRestriction)
    { this.dietaryRestriction = dietaryRestriction; }

    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }

    public Recipe(String recipe_name, Integer prep_time, Integer cook_time, Integer serving_size,
                  DietaryRestriction dietary_restriction, User user) {
        this.recipeName = recipe_name;
        this.prepTime = prep_time;
        this.cookTime = cook_time;
        this.servingSize = serving_size;
        this.dietaryRestriction = dietary_restriction;
        this.user = user;
    }

    public Recipe() {}
}
