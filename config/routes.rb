Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "tasks", to:"tasks#index"
  get '/tasks/show/:id', to: 'tasks#show', as: 'task'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  # root "articles#index"
end
