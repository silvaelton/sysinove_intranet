module Customer
  class ClientContact < ApplicationRecord

    validates :name, :telephone, presence: true
    validates :email, email: true, allow_blank: true


  end
end
