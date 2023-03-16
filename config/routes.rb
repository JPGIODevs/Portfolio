Rails.application.routes.draw do
  get 'projects/portfolio'
  get 'home/about'
  get 'home/resume'
  get 'home/contacts'
  root 'home#index' #<< created a root for home on normal home rather than home/index
end
