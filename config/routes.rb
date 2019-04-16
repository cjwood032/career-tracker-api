Rails.application.routes.draw do
  namespace :api do
    resources :careers
    resources :details
    resources :companies do
      resources :reviews
    end
  end
end
