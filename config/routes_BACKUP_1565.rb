Rails.application.routes.draw do
  resources :calculadoras
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"
<<<<<<< HEAD
  get "calculadoras/inde"

=======
  get 'welcome/index'
  get "/calculadora/new" => "calculadora#new"
  get "/calculadora/show" => "calculadora#show"
  get "/calculadoras/" => "calculadora#index"
  root 'calculadora#new'
>>>>>>> main
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
