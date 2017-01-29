module External
  class Session
    include ActiveModel::Model 

    attr_accessor :email, :password, :id

    validates :email, email: true, presence: true
    validates :password, presence: true, length: { minimum: 6}

    def authorize? current_account
      user = current_account.clients.where(email: self.email, password: self.password).first

      if user.present?
        self.id = user.id
        
        true
      else
        errors.add(:email, "E-mail ou Senha não conferem com o cadastro. Verifique.")
        
        false
      end
        
    end

  end
end