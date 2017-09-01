class RecipesController < ApplicationController
  # def one_recipe_action
  #   @recipe = Recipe.last
  #   render 'one_recipe_page.html.erb'
  # end

  # def all_recipes_action
  #   @recipes = Recipe.all
  #   render 'index.html.erb'
  # end

    def index
      @recipes = Recipe.all


    end

    def show
      recipe_id = params[:id]
      @recipe = Recipe.find(params[:id])
    end

    def new

    end

    def create

      recipe = Recipe.new(
                          title: params[:title],
                          chef: params[:chef],
                          ingredients: params[:ingredients],
                          directions: params[:directions]
                          )
      recipe.save

    end







  end
