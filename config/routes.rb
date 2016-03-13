Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, :controllers => { registrations: 'registrations' }


  resource :profile, only: [:show]


  resources :boats, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :show]
  end

  # post 'search' => 'boats#search'


  resources :users, only: [:show]

  resources :trips, only: [:index, :show] do
    member do
      get :confirmation
    end

    resources :boat_reviews, only: [:new, :create]
  end

  namespace :owner do
    resources :boats
    resources :bookings, only: [:index, :show] do
      member do
        patch :accept
        patch :deny
      end

      resources :renter_reviews, only: [:new, :create]
    end
  end
end
