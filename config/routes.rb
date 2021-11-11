Rails.application.routes.draw do
  root to: 'pages#home'
  get 'gardens/show'
  get 'gardens/index'
  resources :gardens, only: [:show, :index] do
    resources :plants, only: [:create, :destroy]
  end
end
