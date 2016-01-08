Rails.application.routes.draw do
  get 'carts/index'

  get 'carts/update'

  get 'carts/delete'

  get 'dashboard/index'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  get 'products/index'

  get 'products/show'

  root 'sessions#index'
  get 'sessions/index'

  get 'sessions/login'

  get 'sessions/logout'

  post 'sessions/login' => 'sessions#login'

  get 'users/new' => 'users#new'

  post '/users/create_username' => 'users#create_username'
  post '/carts/update' => 'carts#update'
  post '/carts/remove' => 'carts#remove'

  get 'home' => 'dashboard#index'
  get 'products' => 'products#index'
  get 'cart' => 'carts#index'
  # get 'product/:id' => 'products#show'
  resources :users
  resources :sessions
  resources :products
  resources :dashboard

  get '/fetch_products' => 'products#from_category', as: 'fetch_products'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
