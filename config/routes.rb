Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  get 'account', to: 'pages#account'

  resources :residents do
    resources :reports, only: [:index, :create]
    resources :family_members, only: [:new, :create, :edit, :update, :show, :index]
  end

  resources :reports, only: [:show] do
    resources :report_categories, only: [:new, :index, :create, :show]
  end

  resources :report_categories, only: :update
end
