Rails.application.routes.draw do

  resources :calculadoras, :nutricionista, :consulta

  get "/welcome/index"
  get "/calculadoras/index"
  get "/calculadora/" => 'calculadoras#index'
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"
  root "welcome#index"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
