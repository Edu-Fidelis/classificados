Rails.application.routes.draw do
  root to: 'home#show'

  resources :users, only: [:new, :create]

  resources :users, only: [:ads, :create]
  
  #login
  resources :sessions, only: [:new, :create] do
    member do
      delete "sign_out" to: "sessions#destroy" as: "sign_out"
    end


  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
