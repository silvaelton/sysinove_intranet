module Customer
  class ClientAlert < ApplicationRecord
    belongs_to :client, required: false

    enum priority: ['informativo', 'alerta', 'urgente']

    validates :content, :priority, presence: true
  end
end
