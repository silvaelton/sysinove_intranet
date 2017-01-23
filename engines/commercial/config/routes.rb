Commercial::Engine.routes.draw do

  resources :suppliers, path: 'fornecedores'
  resources :supplier_categories, path: 'fornecedor_categorias'
  
end
