Rails.application.routes.draw do

  resources :users
  root ('home#index')
  get 'about', to: 'home#about'
  get 'signup', to: 'users#new'
  post 'user', to: 'users#create'
  resources :users , except: [:new]  #as it has been created above. we wil get all except new


 
  resources :articles


end 