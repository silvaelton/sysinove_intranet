module Customer
  class ClientRequest < ApplicationRecord

    belongs_to :client 

    scope :sender,    -> {where(client_request_type: 1)}
    scope :receiver,  -> {where(client_request_type: 0)}

    enum client_request_type: ['entrada', 'saída']

    validates :content, presence: true
  end
end
