Rails.application.routes.draw do

  get 'home/about'
  get 'home/resume'
  #get 'home/contacts'
  #get 'blog/'
  #get 'portfolio/'

  resources :contacts, only: [:new, :create ]
  get '/contacts', to: 'contacts#new', as: 'contact'
  get 'contacts/sent'


  root 'home#index' #<< created a root for home on normal home rather than home/index


end
