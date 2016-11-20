module Internal
  class Staff < ApplicationRecord

    validates :name, :cpf, :rg, :rg_org, presence: true
    validates :telephone, presence: true

    validates :username, :password, presence: true, if: 'self.user_active?' 

  end
end
