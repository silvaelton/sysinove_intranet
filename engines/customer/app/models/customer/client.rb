module Customer
  class Client < ApplicationRecord
    belongs_to :client_category

    has_many :client_contacts

    accepts_nested_attributes_for :client_contacts, allow_destroy: true
    
    enum client_type: ['pessoa_física', 'pessoa_jurídica']

    validates :client_type, presence: true
    validates :client_category, presence: true

    # pessoa fisica
    validates :cpf_cnpj, cpf: true, presence: true, if: 'self.pessoa_física?'
    validates :personal_name, presence: true, if: 'self.pessoa_física?'


    # pessoa jurídica
    validates :cpf_cnpj, cnpj: true, presence: true, if: 'self.pessoa_jurídica?'
  

    def address_present?
      self.cep.present? || 
      self.state_id.present? ||
      self.city.present? || 
      self.address.present? ||
      self.complement_address.present?
    end

    def contact_present?
      self.client_contacts.present?
    end

    def complement_present?
      self.observation.present? ||
      self.status.present?
    end
    
  end
end
