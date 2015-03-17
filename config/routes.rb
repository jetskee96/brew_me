Rails.application.routes.draw do
  resources :brews
  
  root 'brews#index'
end
