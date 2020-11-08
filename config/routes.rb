Rails.application.routes.draw do
  get 'welcome/index'
  get "/calculadora/new" => "calculadora#new"
  get "/calculadora/show" => "calculadora#show"
  get "/calculadoras" => "calculadora#index"
  resources :calculadoras
  root 'calculadora#new'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
