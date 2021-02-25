Rails.application.routes.draw do
  
  get '/users/:id/expenses_by_type' => 'users#expenses_by_type'

  resources :transaction_types
  resources :users do
    resources :transactions
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
