Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :merchants do 
    # get "/merchants/:merchant_id/items/:item_id/edit", to: "merchants/items#edit"
    # get "/merchants/:merchant_id/items/new", to: "merchants/items#new"
    # get "/merchants/:merchant_id/items/:item_id", to: "merchants/items#show"
    # patch "/merchants/:merchant_id/items/:item_id", to: "merchants/items#update"
    # post "/merchants/:merchant_id/items", to: "merchants/items#create"
    # get "/merchants/:merchant_id/items", to: "merchants/items#index"
    resources :items, module: :merchants, only: [:new, :create, :index, :show, :edit, :update]

    # get "/merchants/:merchant_id/invoices", to: "merchants/invoices#index"
    # get "/merchants/:merchant_id/invoices/:invoice_id", to: "merchants/invoices#show", as: :merchant_invoice
    # patch "/merchants/:merchant_id/invoices/:invoice_id", to: "merchants/invoices#update"
    resources :invoices, module: :merchants, only: [:show, :index, :update]

    # get "/merchants/:merchant_id/dashboard", to: "merchants#show"
    resource :dashboard, only: [:show], to: 'merchants#show'

    # get "/merchants/:id/discounts", to: "merchants/discounts#show"
    resources :bulk_discounts, module: :merchants, only: [:show, :index, :new, :create, :destroy]
  end
  
  # get "/admin", to: "admin#index"
  get '/admin', to: "admin#index"
  
  # Namespace ensures Rails looks for controllers inside an 'admin' folder in controllers directory.
  # Also prefix '/admin' for the URLs
  namespace :admin do
    # get "/admin/merchants", to: "admin/merchants#index"
    # get "/admin/merchants/new", to: "admin/merchants#new"
    # get "/admin/merchants/:id", to: "admin/merchants#show"
    # get "/admin/merchants/:id/edit", to: "admin/merchants#edit"
    # post "/admin/merchants", to: "admin/merchants#create"
    # patch "/admin/merchants/:id", to: "admin/merchants#update"
    resources :merchants, only: [:index, :new, :show, :edit, :create, :update]

    # get "/admin/invoices", to: "admin/invoices#index"
    # get "/admin/invoices/:id", to: "admin/invoices#show"
    # patch "/admin/invoices/:id", to: "admin/invoices#update"
    resources :invoices, only: [:index, :show, :update]    
  end  
end