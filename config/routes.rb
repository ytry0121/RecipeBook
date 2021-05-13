Rails.application.routes.draw do
  root "recipes#index"
  # get "/recipes", to: "recipes#index"
  # get "/recipes/:id", to: "recipes#show"

  resources :recipes do
    resources :ingredients
    resources :steps
  end
end

