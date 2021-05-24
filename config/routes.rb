Rails.application.routes.draw do
  root to: "lists#index"

  resources :lists do
    member do
      get :check_all
      get :uncheck_all
    end
    resources :items do
      member do
        get :check
      end
    end
  end
  devise_for :users, controllers: { registrations: "registrations" }
end
