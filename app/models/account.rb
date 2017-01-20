class Account < ApplicationRecord

  # internal engine
  has_many :general_messages,  class_name: "::Internal::GeneralMessage"
  
  has_many :staffs,   class_name: "::Internal::Staff"
  has_many :sectors,  class_name: "::Internal::Sector"
  has_many :tasks,    class_name: "::Internal::Task"

  # customer engine
  has_many :clients,           class_name: "::Customer::Client"
  has_many :client_categories, class_name: "::Customer::ClientCategory"
  has_many :client_documents,  class_name: "::Customer::ClientDocument"
  has_many :client_requests,   class_name: "::Customer::ClientRequest"
  has_many :client_alerts,     class_name: "::Customer::ClientAlert"
  has_many :client_messages,   class_name: "::Customer::ClientMessage"


end
