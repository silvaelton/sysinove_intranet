module Internal
  class Sector < ApplicationRecord
    validates :name, presence: true
  end
end
