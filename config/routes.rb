Rails.application.routes.draw do
  devise_for :users
  root to: 'kitchens#index'
  get "my_bookings", to: "bookings#my_bookings"
  get "my_kitchens", to: "kitchens#my_kitchens"
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
