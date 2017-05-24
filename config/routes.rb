Rails.application.routes.draw do
  resources :flips, path: "/", only: [:index, :create]
end
