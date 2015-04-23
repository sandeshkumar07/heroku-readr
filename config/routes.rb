# == Route Map
#
#        Prefix Verb   URI Pattern                   Controller#Action
#          root GET    /                             authors#index
#       reviews GET    /reviews(.:format)            reviews#index
#               POST   /reviews(.:format)            reviews#create
#    new_review GET    /reviews/new(.:format)        reviews#new
#   edit_review GET    /reviews/:id/edit(.:format)   reviews#edit
#        review GET    /reviews/:id(.:format)        reviews#show
#               PATCH  /reviews/:id(.:format)        reviews#update
#               PUT    /reviews/:id(.:format)        reviews#update
#               DELETE /reviews/:id(.:format)        reviews#destroy
#         books GET    /books(.:format)              books#index
#               POST   /books(.:format)              books#create
#      new_book GET    /books/new(.:format)          books#new
#     edit_book GET    /books/:id/edit(.:format)     books#edit
#          book GET    /books/:id(.:format)          books#show
#               PATCH  /books/:id(.:format)          books#update
#               PUT    /books/:id(.:format)          books#update
#               DELETE /books/:id(.:format)          books#destroy
# rating_author GET    /authors/:id/rating(.:format) authors#rating
#       authors GET    /authors(.:format)            authors#index
#               POST   /authors(.:format)            authors#create
#    new_author GET    /authors/new(.:format)        authors#new
#   edit_author GET    /authors/:id/edit(.:format)   authors#edit
#        author GET    /authors/:id(.:format)        authors#show
#               PATCH  /authors/:id(.:format)        authors#update
#               PUT    /authors/:id(.:format)        authors#update
#               DELETE /authors/:id(.:format)        authors#destroy
#

Rails.application.routes.draw do
  root :to => 'authors#index'

  resources :reviews

  resources :books

  resources :authors do
    member do
      get 'rating'
    end

    collection do
      get 'sort/:field' => 'authors#sort' # whatever we give in the form of a colon
      # is given as a parameter that can be taken in the contoller
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
