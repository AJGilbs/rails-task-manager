Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :tasks

# 1. List all tasks
  get 'tasks', to: 'tasks#index'

  # 2. Add new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # 3. Update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # 4. Display
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # 5. Delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end


