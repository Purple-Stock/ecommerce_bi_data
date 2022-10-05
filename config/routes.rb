Rails.application.routes.draw do
  resources :shopee_income_finisheds
  resources :shopee_pays
  resources :items
  resources :wspedidos
  get 'bling_reports/index', to: 'bling_reports#index', as: 'index'
  get 'bling_reports/stock_error', to: 'bling_reports#stock_error', as: 'stock_error'
  get 'bling_reports/all_stock', to: 'bling_reports#all_stock', as: 'all_stock'

  get 'messages/filter_index/:order_status', to: 'messages#filter_index', as: 'filter_index'

  root "bling_reports#index"
  
  mount Blazer::Engine, at: "blazer"
end
