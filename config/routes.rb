Rails.application.routes.draw do
  devise_for :users
  resources :products
		get 'download_products/:product_id' => 'products#download_products', as: :products_pdf
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/like' => "products#like_create",  as: :like_create
  post '/payment_create' => "products#payment_create"
  get '/product/:id/paypal' => "products#paypal", as: :paypal

  
end
