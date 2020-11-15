Rails.application.routes.draw do
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"
  get 'welcome/index'
  get "/calculadora/new" => "calculadora#new"
  get "/calculadora/show" => "calculadora#show"
  get "/calculadora/" => "calculadora#index"
  resources :calculadoras
  root 'calculadora#new'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
