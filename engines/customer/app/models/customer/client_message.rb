module Customer
  class ClientMessage < ApplicationRecord
    belongs_to :client

    scope :sender,    -> {where(client_message_type: 1)}
    scope :receiver,  -> {where(client_message_type: 0)}

    enum client_message_type: ['entrada', 'saída']

    validates :content, :client, presence: true
  end
end
