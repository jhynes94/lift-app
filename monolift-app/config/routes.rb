Rails.application.routes.draw do

  devise_for :users

  resources :exercise_logs
  resources :progressions
  get '/progressions/:id/progression_workout', to: 'progressions#workout', as: 'progression_workout'

  resources :programs, only: [:index, :show, :create, :update, :destroy] do
    resources :phases, only: [:index, :show, :create, :update, :destroy]do
      resources :workouts, only: [:index, :show, :create, :update, :destroy] do
        resources :exercises, only: [:index, :show, :create, :update, :destroy]
      end
    end
  end

  root "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
