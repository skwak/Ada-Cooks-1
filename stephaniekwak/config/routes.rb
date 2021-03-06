Rails.application.routes.draw do

  root "home#index",                                               as: :home

  get "/recipes",                    to: "recipes#index",             as: :recipes
  post "/recipes",                   to: "recipes#create"
  get "/recipes/new",                to: "recipes#new",               as: :new_recipe
  get "/recipes/:id",                to: "recipes#show",              as: :recipe
  get "/recipes/:id/edit",           to: "recipes#edit",              as: :edit_recipe
  patch "/recipes/:id",              to: "recipes#update",            as: :update_recipe
  delete "/recipes/:id",             to: "recipes#destroy",           as: :delete_recipe

  get "/ingredients",                to: "ingredients#index",         as: :ingredients
  post "/ingredients",               to: "ingredients#create"
  get "/ingredients/new",            to: "ingredients#new",           as: :new_ingredient
  get "/ingredients/:id",            to: "ingredients#show",          as: :ingredient
  get "/ingredients/:id/edit",       to: "ingredients#edit",          as: :edit_ingredient
  patch "/ingredients/:id",          to: "ingredients#update"


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
