module Commercial
  class SupplierContact < ApplicationRecord

    validates :name, :telephone, presence: true
    validates :email, email: true, allow_blank: true

  end
end
