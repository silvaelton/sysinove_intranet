module Internal
  class Staff < ApplicationRecord
    belongs_to :sector

    validates :name, :cpf, :rg, :rg_org, presence: true
    validates :telephone, presence: true
    validates :cpf, cpf: true 
    
    validates :username, :password, presence: true, if: 'self.user_active?' 

  end
end
