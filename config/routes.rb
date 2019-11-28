Rails.application.routes.draw do
  devise_for :users
  root to: 'kitchens#index'
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
