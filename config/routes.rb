Rails.application.routes.draw do
  resources :users, only: :show
  devise_for :users
  root 'shops#index'
  resources :shops do
    resources :productions, only: [:edit, :show, :update]
    collection do
      get 'search'
    end
  end
end