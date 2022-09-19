Rails.application.routes.draw do
  resources :items
  resources :wspedidos
  get 'bling_reports/index', to: 'bling_reports#index', as: 'index'
  get 'bling_reports/stock_error', to: 'bling_reports#stock_error', as: 'stock_error'

  root "bling_reports#index"

  mount Blazer::Engine, at: "blazer"
end
