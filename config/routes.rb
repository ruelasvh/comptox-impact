Rails.application.routes.draw do
  scope '/api' do
    # landing page data
    scope '/home' do
      get '/' => 'home#index'
    end
    # scientists
    scope '/scientists' do
      get '/' => 'scientists#index'
      post '/' => 'scientists#create'
      put ':scientistId' => 'scientists#update'
      delete ':scientistId' => 'scientists#destroy'
      get ':scientistId' => 'scientists#show'
      get ':scientistId/photo/:scientistImage.:format' => 'scientists#show_photo'
      get ':scientistId/publications' => 'scientists#show_publications'
    end
    # publications
    scope '/publications' do
      #get '/' => 'publications#index'
      get '/' => 'publications#query'
      get ':publication_id' => 'publications#show'
    end
    # data and tools
    scope '/data-tools' do
      get '/gtoken' => 'data_tools#get_google_token'
    end
  end

  root to: 'application#index'
  get '*path', to: 'application#index'

#  get 'scientists' => 'scientists#index' #, as: link_to_scientists_index

#  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
#  root 'home#index', as: 'home'

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
