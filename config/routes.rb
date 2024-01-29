Rails.application.routes.draw do
  resources :inquiries
  get  "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  get  "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  resources :showcases
  resources :services
  resources :news
  resources :testmonials
  resources :sessions, only: [:index, :show, :destroy]
  resource  :password, only: [:edit, :update]
  namespace :identity do
    resource :email,              only: [:edit, :update]
    resource :email_verification, only: [:show, :create]
    resource :password_reset,     only: [:new, :edit, :create, :update]
  end
  resources :dashboard, only: [:index]
  root "home#index"
  resources :inquiry, only: [:index]
  resources :about, only: [:index]
  resources :service, only: [:index]
  resources :contact, only: [:index]
  get '/:id', to: 'home#show_news', as: 'show_news'
end
