Rails.application.routes.draw do
<<<<<<< HEAD
=======
<<<<<<< HEAD
  resources :books
=======
  resources :weight_classes
  resources :length_classes
  resources :products
>>>>>>> cda39ce0f0fa5831fabe6770d80c54b8dc5e0744
>>>>>>> ba975004136ec626c19b616450253efe665f451c
  get 'blog/index'

  resources :categories
  get 'welcome/index'

  resources :posts
  get 'pages/home'

  get 'pages/blog'

  
  
  resources :subscribes
  resources :homes
  resources :blogs
  resources :todos
  get 'static_pages/home'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  #root 'pages#home'
<<<<<<< HEAD
  #root 'welcome#index'
  root 'blog#index'
=======
  root 'welcome#index'
  #root 'blog#index'
>>>>>>> ba975004136ec626c19b616450253efe665f451c

  #root 'todos#index'

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
