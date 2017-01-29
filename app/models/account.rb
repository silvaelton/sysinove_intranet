class Account < ApplicationRecord

  # internal engine
  has_many :general_messages,  class_name: "::Internal::GeneralMessage"
  
  has_many :staffs,   class_name: "::Internal::Staff"
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
  
end
