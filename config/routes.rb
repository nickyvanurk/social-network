Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users, path: '', controllers: { registrations: 'registrations' }
end
