package com.example.springtemplate.models;

import javax.persistence.*;

@Entity
@Table(name="recipe_ingredient")
public class RecipeIngredient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer recipeIngredientId;
    private String unit;
    private Integer quantity;
    private String prepMethod;

    @ManyToOne
    private Recipe recipe;

    @ManyToOne
    private Ingredient ingredient;
}