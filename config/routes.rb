Atios::Application.routes.draw do
  get "courses/new"

  get "courses/show"

 # get "demo_pages/home"

  #get "demo_pages/student"

 # get "demo_pages/lecturer"

 # get "demo_pages/admin"

 # get "users/new"

  root to: 'static_pages#home'
 # match '/admin', to: 'demo_pages#admin'
  match '/lecturer', to: 'demo_pages#lecturer'
  match '/lecturer_student_mgmt', to: 'demo_pages#lecturer_student_mgmt'
  match '/lecturer_exercise_mgmt', to: 'demo_pages#lecturer_exercise_mgmt'
  match '/lecturer_add_student', to: 'demo_pages#lecturer_add_student'
  match '/student', to: 'demo_pages#student'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :admins
  resources :students
  resources :lecturers
  resources :courses

  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

 # root to: 'static_pages#home'

 # match '/signup',  to: 'users#new'
 # match '/help',    to: 'static_pages#help'
 # match '/about',   to: 'static_pages#about'
 # match '/contact', to: 'static_pages#contact'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
