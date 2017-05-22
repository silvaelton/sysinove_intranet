class Account < ApplicationRecord

  # internal engine
  has_many :general_messages,  class_name: "::Internal::GeneralMessage"
  
  has_many :staffs,   class_name: ::Internal::Staff
  has_many :sectors,  class_name: "::Internal::Sector"
  has_many :tasks,    class_name: "::Internal::Task"

  has_many :tickets,  class_name: "::Internal::Ticket"

  # customer engine
  has_many :clients,           class_name: "::Customer::Client"
  has_many :client_categories, class_name: "::Customer::ClientCategory"
  has_many :client_documents,  class_name: "::Customer::ClientDocument"
  has_many :client_requests,   class_name: "::Customer::ClientRequest"
  has_many :client_alerts,     class_name: "::Customer::ClientAlert"
  has_many :client_messages,   class_name: "::Customer::ClientMessage"

  # commercial engine
  has_many :suppliers,           class_name: "::Commercial::Supplier"
  has_many :supplier_categories, class_name: "::Commercial::SupplierCategory"

  has_many :items, class_name: "::Commercial::Item"
  has_many :item_categories, class_name: "::Commercial::ItemCategory"

  has_many :newsletters, class_name: "::Commercial::Newsletter"
  

  # site_core engine

  has_many :navs, class_name: "::SiteCore::Nav"
  has_many :categories, class_name: "::SiteCore::Category"
  has_many :pages, class_name: "::SiteCore::Page"
  has_many :posts, class_name: "::SiteCore::Post"


  #finance engine

  has_many :order_categories, class_name: "::Finance::OrderCategory"  
  has_many :wallets,          class_name: "::Finance::Wallet"  
  has_many :billet_banks,     class_name: "::Finance::BilletBank" 

  has_many :billets,          class_name: "::Finance::Billet" 
  has_many :orders,           class_name: "::Finance::Order" 



  

  enum situation: ['ativo', 'inativo', 'cadastro_especial', 'irregular']
  enum layout: ['básico']

  validates :name, presence: true
  validates :email, email: true, presence: true
  validates :subdomain, presence: true, uniqueness: true
  validates :situation, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 6 }

end
