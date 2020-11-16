Rails.application.routes.draw do
  resources :calculadoras
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
