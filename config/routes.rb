# frozen_string_literal: true

Rails.application.routes.draw do
  get '/customers', to: 'customers#index'
  # get 'customers/show'

  get '/alphabetized', to: 'customers#alphabetized'

  get '/missing_email', to: 'customers#missing_email'

  root to: 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
