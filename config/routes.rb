Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'exercises/index'
  get 'dashboards/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "dashboards#index"

  resources :users do
    resources :exercises
  end

  resources :friendships, only: [:show, :create, :destroy]
  resources :messages, only: [:create]

  resources :dashboards, only: [:index] do
    collection do
      post :search, to: 'dashboards#search'
    end
  end
end
