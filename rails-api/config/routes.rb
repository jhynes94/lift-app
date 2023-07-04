Rails.application.routes.draw do
  devise_for :users

  resources :exercises, only: [:index, :create, :update, :destroy]

  # get '/Exercises', to: 'exercises#index'
  # post '/Exercise', to: 'exercises#create'
  # patch '/Exercise/:id', to: 'exercises#update'
  # delete '/Exercise/:id', to: 'exercises#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
