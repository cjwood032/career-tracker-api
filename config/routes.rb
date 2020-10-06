Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :careers
      resources :details
      get '/API/import', to: "details#import"
      get '/API/export', to: "details#export"
    end
  end
  
end
