Rails.application.routes.draw do
  root 'candidate_details#index'
  resources :candidate_details

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
