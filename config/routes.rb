Rails.application.routes.draw do
  root "pages#index"

  resources :projects, only: [:index, :show]

  resources :contacts, only: [:new, :create]

  namespace :admin do
    resources :projects
    root "projects#index"
  end
end
