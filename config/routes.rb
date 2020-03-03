Rails.application.routes.draw do
  resources :tasks, only: [:create, :destroy]
  root 'tasks#index'
end
