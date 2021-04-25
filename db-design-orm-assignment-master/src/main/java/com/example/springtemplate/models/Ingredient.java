package com.example.springtemplate.models;

import javax.persistence.*;

@Entity
@Table(name="ingredients")
public class Ingredient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ingredientId;
    private String ingredient;
}