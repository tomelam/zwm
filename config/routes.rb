Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
