Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  get 'account', to: 'pages#account'

  resources :residents do
    member do
      get :full_info
    end
    resources :reports, only: [:index, :create]
    resources :family_members
  end

  resources :reports, only: [:show, :update] do
    resources :report_categories, only: [:new, :index, :create, :show]
  end

  resources :report_categories, only: :update
end
