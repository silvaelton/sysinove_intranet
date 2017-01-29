module Internal
  class Session
    include ActiveModel::Model 

    attr_accessor :username, :password, :id, :master


    validates :username, presence: true
    validates :password, presence: true, length: { minimum: 6}

    def authorize? current_account
      user    = current_account.staffs.where(username: self.username, password: self.password).first
      
      if user.present?
        self.id     = user.id
        self.master = false
        true
      elsif current_account.username == self.username && current_account.password == self.password 
        self.master = true
        self.id     = false
        true
      else
        errors.add(:email, "Usuário ou Senha não conferem com o cadastro. Verifique.")
        false
      end
        
    end

  end
end