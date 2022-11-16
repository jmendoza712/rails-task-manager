Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Landing page
  get "tasks", to: "tasks#index"
  # CREATE
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # Displaying each task
  get "tasks/:id", to: "tasks#show", as: :task
  # UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # DELETE
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
