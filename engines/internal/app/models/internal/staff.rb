module Internal
  class Staff < ApplicationRecord
    belongs_to :sector, required: false
    belongs_to :account

    validates :name, :cpf, :rg, :rg_org, presence: true
    validates :telephone, presence: true
    validates :cpf, cpf: true 
    
    validates :username, :password, presence: true, if: 'self.user_active?' 

    validates_uniqueness_of :username, scope: :account_id

    validate :only_username

    private

    def only_username

      if self.username == self.account.username
        errors.add(:username, "O usuário não pode ser igual ao usuário mestre")
      end

    end
  end
end
