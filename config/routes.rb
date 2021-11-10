Rails.application.routes.draw do
  get 'gardens/show'
  get 'gardens/index'
  resources :gardens, only: [:show, :index] do
    resources :plants, only: [:create, :destroy]
  end
end
