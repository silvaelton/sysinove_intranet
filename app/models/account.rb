class Account < ApplicationRecord

  has_many :staffs,   class_name: "::Internal::Staff"
  has_many :sectors,  class_name: "::Internal::Sector"
  has_many :tasks,    class_name: "::Internal::Task"
  
  has_many :general_messages,  class_name: "::Internal::GeneralMessage"

end
