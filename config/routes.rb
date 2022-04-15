Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  resources :shops, only: [:index, :new, :create, :show, :edit, :update] do
    resources :productions, only: [:show]
  end
end