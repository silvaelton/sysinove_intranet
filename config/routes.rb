Rails.application.routes.draw do
  
  mount Customer::Engine    => '/gestao_cliente',    as: :customer
  mount Internal::Engine    => '/gestao_interna',    as: :internal
  mount Finance::Engine     => '/gestao_financeira', as: :finance
  mount Commercial::Engine  => '/gestao_comercial',  as: :commercial
  mount SiteCore::Engine    => '/gestao_site',       as: :site_core

  mount External::Engine    => '/externo',           as: :external

  
  mount General::Engine     => '/geral',             as: :general
  mount GeneralSite::Engine => '/site_principal',    as: :general_site
end
