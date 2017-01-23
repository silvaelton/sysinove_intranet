module Commercial
  class SupplierCategory < ApplicationRecord
    validates :name, presence: true
  end
end
