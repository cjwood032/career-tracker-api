Rails.application.routes.draw do
  namespace :api do
    resources :careers
    resources :details
  end
end
