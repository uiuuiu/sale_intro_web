Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin/', to: 'admin/admin_home#index'
  namespace :admin do
    resources :admin_home
    resources :categories
    resources :posts
  end
  resources :posts
  resources :categories
  resources :tags
end
