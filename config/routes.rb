Rails.application.routes.draw do

<<<<<<< HEAD
  resources :users
  resources :articles
=======
  # resources :users
>>>>>>> a3559082a5559f7a628bbfe2cb31f6210167a517
  root ('home#index')
  get 'about', to: 'home#about'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users , except: [:new]  #as it has been created above. we wil get all except new


 
  


end 