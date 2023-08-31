Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  resources :residents do
    resources :reports, only: [:index, :create]
  end
  resources :reports, only: [:show] do
    resources :report_categories, only: [:new,:index, :create]
  end
end
