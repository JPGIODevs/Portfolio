Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

#projects app
  get 'projects/portfolio'
  get 'projects/placeholder'
  #unfinishing projects :) route as needed
  get 'projects/manifold' => redirect("projects/placeholder")
  get 'projects/tauritasks' => redirect("projects/placeholder")
  get 'projects/ps1horror' => redirect("projects/placeholder")
  get 'projects/twilioAI' => redirect("projects/placeholder")
  get 'projects/reader' => redirect("projects/placeholder")
#home app
  get 'home/contacts'
  root 'home#index' #<< created a root for home on normal home rather than home/index
#contacts app
  get 'contacts/new'
end
