Rails.application.routes.draw do

  resources :plans
  resources :comments
  resources :lessons
  resources :standards
  resources :users
  resources :students
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
