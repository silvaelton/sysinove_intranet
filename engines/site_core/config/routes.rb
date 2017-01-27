SiteCore::Engine.routes.draw do

  resources :navs,  path: 'menus'
  resources :pages, path: 'paginas'
  resources :posts, path: 'postagens'

  resources :categories, path: 'categorias'
end
