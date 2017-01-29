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
  
  resources :tickets, path: 'chamados' do 
    resources :ticket_comments, path: 'comentarios'
  end

  resources :general_messages, path: 'chat', only: [:new, :create]
  resources :staff_messages

  resources :sessions, path: 'acesso', only: [:new, :create, :destroy] do
    collection do 
      delete 'logout', to: 'sessions#destroy'
    end
  end

end
