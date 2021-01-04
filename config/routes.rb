Rails.application.routes.draw do
  devise_scope :user do
    root 'devise/registrations#new'
  end

  devise_for :users, path: ''
end
