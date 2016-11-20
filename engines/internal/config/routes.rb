Internal::Engine.routes.draw do

  resources :tasks,   path: 'tarefas'
  resources :staffs,  path: 'funcionarios'
  resources :contacts
  resources :sectors
  resources :patrimonies
  resources :informations
  resources :schedules
  resources :events

  resources :general_messages
  resources :staff_messages

end
