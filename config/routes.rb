Rails.application.routes.draw do

  devise_for :models
  resources :products
  resources :products
  resources :sessions
  get 'sessions/new'

  resources :users
  get 'blog/index'
  get 'blog/artikel1'
  get 'blog/artikel2'

  get 'pages/home'

  get 'pages/blog'


  resources :books

  resources :weight_classes
  resources :length_classes
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


  root 'welcome#index'
  
 
  #root 'blog#index'

  #root 'welcome#index'
  #root 'blog#index'

  #root 'blog#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  get 'register' => 'users#new'
  post 'register' => 'users#new'
  get 'createitem' => 'products#new'
  post 'createitem' => 'products#new'

  #root 'todos#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  # 
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
  #     #   end
end
