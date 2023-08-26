Rails.application.routes.draw do
  devise_for :user

  resources :contacts, only: [:new, :create]
  resources :articles do
    resources :comments
  end

#projects app
  get 'projects/', to: 'projects#index'
  get 'projects/portfolio'
  get 'projects/placeholder'
  #unfinishing projects :) route as needed
  get 'projects/wrongrail' => redirect("projects/placeholder")
  get 'projects/gotasks' => redirect("projects/placeholder")
  get 'projects/ashleys' => redirect("projects/placeholder")
  get 'projects/twilioAI' => redirect("projects/placeholder")
  get 'projects/reader' => redirect("projects/placeholder")
#home app
  root 'home#index' #<< created a root for home on normal home rather than home/index
#contacts app
  get 'contacts/new'
  get 'contacts/create'
#blogs app
  get 'articles/', to: "articles#index"
  get 'articles/:id', to: "articles#show"
end
