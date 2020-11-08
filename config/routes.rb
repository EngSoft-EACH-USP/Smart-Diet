Rails.application.routes.draw do
  get 'dieta/index'
  get 'dieta/' => "dieta#index"
  get 'dieta/:id' => "dieta#show"
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
