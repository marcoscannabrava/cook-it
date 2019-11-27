Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kitchens, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
