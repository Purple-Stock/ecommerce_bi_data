Rails.application.routes.draw do
  resources :simplo_messages
  resources :shopee_income_finisheds
  resources :shopee_pays
  resources :items
  resources :wspedidos
  get 'bling_reports/index', to: 'bling_reports#index', as: 'index'
  get 'bling_reports/stock_error', to: 'bling_reports#stock_error', as: 'stock_error'
  get 'bling_reports/all_stock', to: 'bling_reports#all_stock', as: 'all_stock'

  get 'messages/filter_index/:order_status', to: 'messages#filter_index', as: 'filter_index'

  get 'simplo_shippings/index', to: 'simplo_shippings#index', as: 'simplo_shippings_index'
  post 'simplo_shippings/receive_orders_id', to: 'simplo_shippings#receive_orders_id', as: 'receive_orders_id'

  root "bling_reports#index"
  
  mount Blazer::Engine, at: "blazer"
end
