Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'
  resources :movies, only: [:index]

  namespace :admin do
    resources :movies, only: [:index, :new, :edit, :update, :create, :destroy]
  end
end
