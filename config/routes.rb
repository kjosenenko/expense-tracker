Rails.application.routes.draw do

  resources :transaction_types
  resources :users do
    resources :transactions
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
