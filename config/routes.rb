Rails.application.routes.draw do

  resources :users
  resources :articles
  root ('home#index')
  get 'about', to: 'home#about'


 
  


end 