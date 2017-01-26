Commercial::Engine.routes.draw do

  resources :suppliers, path: 'fornecedores'
  resources :supplier_categories, path: 'fornecedor_categorias'

  resources :items, path: 'estoque'  
  resources :item_categories, path: 'estoque_categoria'  
  
  resources :newsletters  
  resources :newsletter_sends, path: 'envio_newsletters'

end
