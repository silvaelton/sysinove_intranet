module Customer
  class ClientCategory < ApplicationRecord

    validates :name, presence: true
    validates_uniqueness_of :name, scope: :account_id    
  end
end
