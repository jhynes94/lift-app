Rails.application.routes.draw do
  devise_for :users

  resources :programs, only: [:index, :show, :create, :update, :destroy] do
    resources :phases, only: [:index, :show, :create, :update, :destroy]do
      resources :workouts, only: [:index, :show, :create, :update, :destroy] do
        resources :exercises, only: [:index, :show, :create, :update, :destroy]
      end
    end
  end

  resources :progressions, only: [:index]

  # get '/Exercises', to: 'exercises#index'
  # post '/Exercise', to: 'exercises#create'
  # patch '/Exercise/:id', to: 'exercises#update'
  # delete '/Exercise/:id', to: 'exercises#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
