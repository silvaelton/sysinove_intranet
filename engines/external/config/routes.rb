External::Engine.routes.draw do

  resources :documents
  resources :requests
  resources :messages
  resources :archives
  resources :orders
  
  resources :sessions do 
    delete 'logout'
  end

end
