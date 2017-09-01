Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/one_recipe_url' => 'recipes#one_recipe_action' 
  # get '/all_recipes_url' => 'recipes#all_recipes_action'
  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'
  

  get '/recipes/new' => 'recipes#new'
  post '/recipes' => 'recipes#create'

  get '/recipes/:id' => 'recipes#show'
end
