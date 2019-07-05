Rails.application.routes.draw do
  namespace :api do
    resources :careers
    resources :details
<<<<<<< HEAD
    get '/API/import', to: "careers#import"
=======
    resources :companies do
      resources :reviews
    end
>>>>>>> 599329487e8d63ece48905b4bc3f71045742f84d
  end
end
