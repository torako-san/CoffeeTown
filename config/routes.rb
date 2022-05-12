Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  resources :shops do
    resources :productions, only: [:edit, :show, :update]
    collection do
      get 'search'
    end
  end
  post 'wishlist/:id' => 'wish_lists#create', as: 'create_wishlist'
  delete 'wishlist/:id' => 'wish_lists#destroy', as: 'destroy_wishlist'

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
end