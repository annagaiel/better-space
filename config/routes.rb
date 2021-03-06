Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :space_listings
  patch '/space_listings/:id/toggle_favorite', to: 'space_listings#toggle_favorite'
  get '/favorites', to: 'users#favorites_list'
  delete '/favorites/:id', to: 'users#remove_favorite'
  get '/your_bookings', to: 'bookings#your_bookings'
  get '/your_rented_spaces', to: 'bookings#your_rented_spaces'
  patch '/bookings/:id/toggle_approved_status', to: 'bookings#toggle_approved_status'
  resources :bookings
  resources :images
  resources :reviews
  resources :charges, only: [:create]
  resources :users, only: [:show]

  namespace :api do
    namespace :v1 do
      get '/space_listings', to: 'space_listings#index'
      get '/your_bookings', to: 'bookings#your_bookings'
      get '/your_rented_spaces', to: 'bookings#your_rented_spaces'
      patch '/bookings/:id/toggle_approved_status', to: 'bookings#toggle_approved_status'
    end
  end
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
