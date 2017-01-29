External::Engine.routes.draw do

  root 'dashboard#show'
  
  resources :documents, path: 'documentos'
  resources :requests,  path: 'solicitacoes'
  resources :messages,  path: 'mensagens'
  resources :orders,    path: 'pedidos'
  resources :alerts,    path: 'avisos'
  
  resources :sessions do
    collection do  
      delete 'logout', to: 'sessions#destroy'
    end
  end

end
