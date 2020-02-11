Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all tasks
  get 'tasks', to: 'tasks#index'
  # create a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # see details of the task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # uptate a task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
