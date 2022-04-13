Rails.application.routes.draw do
  devise_for :users
  root 'shops#index'
  resources :shops, only: [:index, :new, :create, :show] do
    resources :production, only: [:index, :show]
  end
end