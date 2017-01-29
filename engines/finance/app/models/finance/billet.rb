module Finance
  class Billet < ApplicationRecord

    validates :name, :description, :due, :value, presence: true
    
  end
end
