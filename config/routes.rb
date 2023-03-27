Rails.application.routes.draw do
#projects app
  get 'projects/portfolio'
  get 'projects/placeholder'
  #unfinishing projects :) route as needed
  get 'projects/manifold' => redirect("projects/placeholder")
#home app
  get 'home/about'
  get 'home/resume'
  get 'home/contacts'
  root 'home#index' #<< created a root for home on normal home rather than home/index
end
