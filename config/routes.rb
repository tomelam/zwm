Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
