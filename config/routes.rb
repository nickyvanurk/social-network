Rails.application.routes.draw do
  root 'application#index'

  get 'signup', to: 'devise/users#new'
  get 'login', to: 'devise/sessions#new'
  post 'login', to: 'devise/sessions#create'
  delete 'logout', to: 'devise/sessions#destroy'

  devise_for :users, path_names: {
    sign_in: 'login', sign_out: 'logout',
    sign_up: 'signup', registration: 'register'
  }
end
