Rails.application.routes.draw do
  get 'info/about'

  get 'info/privacy'

  get 'info/license'

  get 'info/home'

  get 'info/join'

  get 'info/team'

  devise_for :users 
  resources :locks
  resources :infos

  root 'info#home'
end
