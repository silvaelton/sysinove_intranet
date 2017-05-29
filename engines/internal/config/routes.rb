Internal::Engine.routes.draw do
  
  root 'dashboard#show'
  
  get 'dashboard', path: 'visao-geral', to: 'dashboard#show'

  resources :tasks,   path: 'tarefas'
 
  resources :staffs,  path: 'funcionarios' do 
    resources :complements,     controller: :staff_complements
    resources :identifications, controller: :staff_identifications
    resources :trainings,       controller: :staff_trainings
    resources :absenteeisms,    controller: :staff_absenteeisms
    resources :shifts,          controller: :staff_shifts
    resources :activities,      controller: :staff_activities
    resources :restrictions,    controller: :staff_restrictions
    resources :materials,       controller: :staff_materials
    resources :benefits,        controller: :staff_benefits
  end
 

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
