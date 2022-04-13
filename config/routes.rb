Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  resources :shops, only: [:index, :new, :create, :show] do
    resources :productions, only: [:index, :show]
  end
end