Rails.application.routes.draw do
  root 'books#index'
  get    'admin_home' => 'students#admin_home'
  get    'student_home'  => 'students#student_home'
  get    'admin_index' => 'students#admin_index'
  get    'book_filters' => 'books#filters'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'logout'  => 'sessions#destroy'

  get 'books/history/:id' => 'books#history'
  get '/books/:isbn', to: "books#show"

  get 'students/history/:id' => 'students#history'
  get 'students/delete_admin/:id' => 'students#delete_admin'


  resources :checkout_histories
  resources :students
  get 'students/delete_admin/:id' => 'students#delete_admin'

  resources :books
  get 'books/history/:id' => 'books#history'
  get 'students/history/:id' => 'students#history'


  post '/books/:id' => 'books#checkout'
  resources :shelves


  #root 'application#index'
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
