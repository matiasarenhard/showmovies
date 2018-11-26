Rails.application.routes.draw do
  resources :movies
  devise_for :views
  devise_for :users do 
    root :to => "devise/sessions#new"
  end
end
