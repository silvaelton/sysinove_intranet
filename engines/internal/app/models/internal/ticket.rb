module Internal
  class Ticket < ApplicationRecord
    belongs_to :account

    has_many :ticket_comments
    validates :name, :content, presence: true
  
    enum situation: ['aberto', 'em_análise', 'cancelado', 'finalizado']    
  end
end
