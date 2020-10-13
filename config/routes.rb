Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :careers
      resources :details
      resources :companies
      get '/API/import', to: "details#import"
      get '/API/export', to: "details#export"
    end
  end
  
end
