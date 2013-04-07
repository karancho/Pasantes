Pasantes::Application.routes.draw do

  resources :jobs


  resources :skills


  resources :internships_users


  resources :contracts
  get '/contracts/:id/cm', to: 'contracts#cm'

  resources :tasks

  resources :situations

  resources :internships_tasks

  resources :internships
  get '/internships/:id/postularme', :to => 'internships#postularme'

  resources :companies


#==========================================================================
# Pagina 198 de AWDR:
# Whereas previously we
# relied on the scaffolding generator to create our model and routes for us, this
# time we simply generated a controller because there is no database-backed
# model for this controller. Unfortunately, without the scaffolding conventions
# to guide it, Rails has no way of knowing which actions are to respond to GET
# requests, which are to respond to POST requests, and so on, for this controller

  get "admin" => "admin#index"
  controller :sessions do
    get    'login' => :new
    post   'login' => :create
    delete 'logout' => :destroy
  end
#Esto produce:
#rake routes
# admin  GET    /admin(.:format)   admin#index
# login  GET    /login(.:format)   sessions#new
#        POST   /login(.:format)   sessions#create
# logout DELETE /logout(.:format)  sessions#destroy
#============================================================================

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

  resources :users


  resources :localities


  resources :provinces


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
    get "landing/bienvenida"
    root :to => 'landing#bienvenida'


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
