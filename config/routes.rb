Rails.application.routes.draw do


  devise_for :charities
  devise_for :users
  resources :users, only: [:show]

  root to: 'home#index'


  resources :products
  resources :categories
  resources :orders

  resource :cart, only: [ :show ] do
    post "add", path: "add/:id"
    get :checkout
  end

  resources :orders, only: [ :index, :show, :create, :update ] do
    member do
      get :new_payment
      post :pay
    end
  end

  #=============================== API =======================================

  namespace :api do
     resources :products
     resources :categories
  end
end
