Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :orders, only: [:create, :new]
  end
  resources :orders, only: [:index]
  get 'my_orders', to: 'orders#my_orders'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
