Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user_registrations" }
  
  resources :products do
    resources :comments
  end
  resources :users
  
  get 'subscribers/index'
  resources :subscribers

  get 'static_pages/product'

  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  post 'static_pages/thank_you'

  post 'payments/create'

  get 'payments/success'

  get 'static_pages/landing_page'
  root 'static_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
