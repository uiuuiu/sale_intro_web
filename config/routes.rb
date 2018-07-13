Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin/', to: 'admin/admin_home#index'
  namespace :admin do
    resources :abouts
    resources :contacts
    resources :admin_home
    resources :categories
    resources :posts
    resources :service_categories
    resources :service_posts
    resources :quality_policies
    resources :customer_logos
    resources :document_files do
      collection do
        get :download
      end
    end
  end
  resources :abouts, only: [:index]
  resources :quality_policies, only: [:index]
  resources :contacts, only: [:index, :create]
  resources :posts
  resources :categories
  resources :service_categories
  resources :service_posts
  resources :tags
  resources :document_files do
    collection do
      get :download
    end
  end
  resources :search, only: [:index]
end
