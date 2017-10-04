Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
 get 'auth/:provider/callback', to: 'sessions#create'
 get 'auth/failure', to: redirect('/')
 # get 'auth/facebook', to: redirect
 delete '/signout', to: 'sessions#destroy'

  resources :courses
  resources :users
  root 'static_pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
