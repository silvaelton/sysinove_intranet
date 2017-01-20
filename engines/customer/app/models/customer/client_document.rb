module Customer
  class ClientDocument < ApplicationRecord
    belongs_to :client

    scope :sender,    -> {where(client_document_type: 1)}
    scope :receiver,  -> {where(client_document_type: 0)}

    enum client_document_type: ['entrada', 'saída']

    validates :client, :title, :description, :file_path, presence: true
  
  end
end
