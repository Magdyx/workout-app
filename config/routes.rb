Rails.application.routes.draw do
  get 'exercises/index'

  devise_for :users
  get 'dashboards/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "dashboards#index"

  resources :users do
    resources :exercises
  end
end
