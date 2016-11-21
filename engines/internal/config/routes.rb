Internal::Engine.routes.draw do

  root 'dashboard#show'
  
  get 'dashboard', path: 'visao-geral', to: 'dashboard#show'

  resources :tasks,   path: 'tarefas'
  resources :staffs,  path: 'funcionarios'
  resources :contacts
  resources :sectors
  resources :patrimonies
  resources :notes
  resources :events
  resources :agendas

  resources :general_messages, path: 'chat', only: [:new, :create]
  resources :staff_messages

end
