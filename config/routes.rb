Rails.application.routes.draw do
  resources :items
  resources :wspedidos
  get 'bling_reports/index', to: 'bling_reports#index', as: 'index'

  root "bling_reports#index"

  mount Blazer::Engine, at: "blazer"
end
