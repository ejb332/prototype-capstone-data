Rails.application.routes.draw do
  get "/suitcase" => "suitcase#index"

  get "/destinations" => "destinations#index"
  get "/destinations/new" => "destinations#new"
  post "/destinations" => "destinations#create"
  get "/destinations/:id" => "destinations#show"
  get "/destinations/:id/edit" => "destinations#edit"
  patch "/destinations/:id" => "destinations#update"
  delete "/destinations/:id" => "destinations#destroy"

  get "/items" => "items#index"
  get "/items/new" => "items#new"
  post "/items" => "items#create"
  get "/items/:id" => "items#show"
  get "/items/:id/edit" => "items#edit"
  patch "/items/:id" => "items#update"
  delete "items/:id" => "items#destroy"

  get "/categories" => "categories#index"
  get "/categories/new" => "categories#new"
  post "/categories" => "categories#create"
  get "/categories/:id" => "categories#show"
  get "/categories/:id/edit" => "categories#edit"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  get "/signup" => "users#new"
  post "/user" => "users#create"
  get "/user/:id/edit" => "users#edit"
  patch "/user/:id" => "users#update"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
