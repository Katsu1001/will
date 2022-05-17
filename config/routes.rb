Rails.application.routes.draw do
  get 'images/index'
  get 'users/index'
  get 'training_records/index'
  devise_for :users
  get 'toppages/index'
  root to:"toppages#index"

  resources :toppages, only: :index do
    collection do
      get 'column'
      get 'a_column'
      get 'privacy_policy'
      get 'regulation'
      get 'contact_us'
      get 'administrator_info'
      get 'protein'
    end
  end
end
