Rails.application.routes.draw do

  root "pages#index"
  get "/contact", to: "contacts#new"
  post "/contact", to: "contacts#create"
  resources :projects, only: [:index, :show]

  namespace :admin do
    resources :projects
    root "projects#index"
  end
end
