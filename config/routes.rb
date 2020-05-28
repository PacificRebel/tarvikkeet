Rails.application.routes.draw do
  get 'tervetuloa/index'

  resources :pans

  root 'tervetuloa#index'
end
