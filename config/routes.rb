Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :reviews
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root "static_pages#home"
  get '/profile', to: 'static_pages#profile'
end
