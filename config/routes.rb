Rails.application.routes.draw do
  devise_for :users 
  resources :locks

  root 'static_pages#home'
end
