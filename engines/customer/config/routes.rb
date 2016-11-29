Customer::Engine.routes.draw do

  root 'dashboard#show'

  resources :clients, path: 'clientes'
  resources :client_categories, path: 'client_categorias'
  
  resources :messages,    path: 'mensagens'
  resources :requests,    path: 'solicitacoes'
  resources :documents,   path: 'documentos'
  resources :archives,    path: 'arquivos'
  

end
