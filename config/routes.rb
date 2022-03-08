Rails.application.routes.draw do

  root ('articles#index')
  get 'about', to: 'home#about'


 
  resources :articles


end 