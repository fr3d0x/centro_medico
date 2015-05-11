Rails.application.routes.draw do

  resources :pediatric_appointments

  resources :growth_controls

  resources :pediatric_controls

  resources :pediatric_histories

  resources :pediatric_patients do
    collection do
      get :ya_es_mayor
    end
  end

  resources :medical_histories

  devise_for :users, controllers: {registrations: 'registrations'}

  get 'user/new'
  
  resources :records

  resources :tables

  resources :appointment_reports

  resources :appointments do
    collection do
      get :cancelar
      get :reactivar
      get :doc_index
      post :doc_index
      get :citas_del_dia
      post :citas_del_dia
      get :citas_por_doctor
      post :citas_por_doctor
    end
  end

  resources :doctors

  resources :patients do
    collection do
      get :historial
      post :historial
    end
  end

  root 'index#index'

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
