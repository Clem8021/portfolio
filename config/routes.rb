Rails.application.routes.draw do
  root "pages#index"

  resources :projects, only: [:index, :show]

  namespace :admin do
    resources :projects
    root "projects#index"
  end

  get  "/contact", to: "pages#contact",      as: :contact
  post "/contact", to: "pages#send_contact", as: :send_contact
end