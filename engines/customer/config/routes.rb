Customer::Engine.routes.draw do

  root 'dashboard#show'

  resources :clients, path: 'clientes'
  resources :client_categories, path: 'client_categorias'
  
  resources :client_messages,    path: 'mensagens'
  resources :client_requests,    path: 'solicitacoes'
  resources :client_documents,   path: 'documentos'
  resources :client_archives,    path: 'arquivos'
  resources :client_alerts,      path: 'alertas'
  

end
