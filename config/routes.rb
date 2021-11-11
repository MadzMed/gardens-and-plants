Rails.application.routes.draw do
  root to: 'pages#home'
  resources :gardens, only: [:show, :index] do
    resources :plants, only: [:create, :destroy]
  end
end
