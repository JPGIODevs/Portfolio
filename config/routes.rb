Rails.application.routes.draw do
  
  get 'home/about'
  get 'home/resume'
  get 'home/contacts'
  #get 'blog/'
  #get 'portfolio/'
  root 'home#index' #<< created a root for home on normal home rather than home/index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
