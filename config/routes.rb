Rails.application.routes.draw do
  root 'books#index'
  get    'admin_home' => 'students#admin_home'
  get    'student_home'  => 'students#student_home'
  get    'admin_index' => 'students#admin_index'
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
end
