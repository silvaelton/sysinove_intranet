module Finance
  class BilletBank < ApplicationRecord

    validates :name, :wallet, :agency, :account, presence: true
    enum bank: ['banco_do_brasil']
  end
end
