Rails.application.routes.draw do
  root 'sessions#login_page'
  resources :candidate_details
  resources :sessions
  post 'sessions/login_page'
  get 'sessions/signup_page'
  get 'sessions/logout'
  get 'sessions/admin_page'
  get 'signup', to: 'login_data#new', as: 'signup'
  post '/cd', to:'candidate_details#index', as: 'home'
  get 'logout', to: 'sessions#logout', as: 'logout'

  resources :login_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
