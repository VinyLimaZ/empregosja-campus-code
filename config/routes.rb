Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :jobs, only: [:new, :show, :create, :edit, :update]
  resources :companies, only: [:new, :show, :create, :edit, :update]
  resources :categories, only: [:show, :new, :create, :edit, :update]
end
