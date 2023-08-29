Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :residents
  resources :residents, only: [:index, :show]
  get 'dashboard', to: 'pages#dashboard'
end
