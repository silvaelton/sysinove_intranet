module Finance
  class Wallet < ApplicationRecord
    validates :name, :description, presence: true
  end
end
