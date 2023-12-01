Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  resources :programs
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
