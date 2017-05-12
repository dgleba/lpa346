Rails.application.routes.draw do
 

  resources :answers
  resources :questions
  resources :question_lists
  resources :process_steps
  resources :part_numbers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # devise_for :users

  resources :surveys do
    resources :questions do
    end
  end

  resources :answers, only: [:create]

  root "surveys#index"
 

  resources :products
  resources :product_features
  resources :pfeatures
  resources :country_of_origins

  # mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  # root "home#index"


  # get 'home/index'

  # get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
