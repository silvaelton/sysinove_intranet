module Commercial
  class ItemCategory < ApplicationRecord
    validates :name, presence: true
  end
end
