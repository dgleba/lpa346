Rails.application.routes.draw do
 
  resources :audit_counts
  resources :answers
  resources :questions
  resources :question_lists
  resources :process_steps
  resources :part_numbers
  resources :surveys
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  resources :surveys do
    resources :questions do
    end
  end

  resources :answers, only: [:create]

 
  resources :products
  resources :product_features
  resources :pfeatures
  resources :country_of_origins

  # mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'

  resources :roles
 
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # devise_for :users
  
  # root "home#index"


  root "home#audit_count"
  #get "surveys/index"

   #get 'home/index'
   get 'home/about'
   get 'home/audit_count'

   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
