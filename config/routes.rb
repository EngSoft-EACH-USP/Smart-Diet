Rails.application.routes.draw do
  resources :calculadoras
  get "/welcome/index"
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"
  root "calculadoras#index"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
