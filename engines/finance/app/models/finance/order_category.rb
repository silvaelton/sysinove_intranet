module Finance
  class OrderCategory < ApplicationRecord
    validates :name, presence: true
  end
end
