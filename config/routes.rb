Rails.application.routes.draw do
  devise_for :accounts, path: '/', controllers: { confirmations: 'confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'accounts#index'

  resources :accounts

  as :account do
    match '/confirmation' => 'confirmations#update', :via => :put, :as => :update_account_confirmation
  end
end