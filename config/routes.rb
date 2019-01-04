Rails.application.routes.draw do
  namespace :api do
    resources :careers do
      resources :details
    end
  end
end
