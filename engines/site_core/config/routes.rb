SiteCore::Engine.routes.draw do

  resources :navs, path: 'menus'
  resources :categories, path: 'categorias'
end
