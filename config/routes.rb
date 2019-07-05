Rails.application.routes.draw do
  namespace :api do
    resources :careers
    resources :details
    get '/API/import', to: "details#import"
  end
end
