module Commercial
  class Supplier < ApplicationRecord

    belongs_to :supplier_category
    
    has_many :supplier_contacts

    accepts_nested_attributes_for :supplier_contacts, allow_destroy: true

    enum supplier_type: ['pessoa_física', 'pessoa_jurídica']

    validates :supplier_type, presence: true
    validates :supplier_category, presence: true

    # pessoa fisica
    validates :cpf_cnpj, cpf: true, presence: true, if: 'self.pessoa_física?'
    validates :personal_name, presence: true, if: 'self.pessoa_física?'


    # pessoa jurídica
    validates :cpf_cnpj, cnpj: true, presence: true, if: 'self.pessoa_jurídica?'
    validates :social_reason, presence: true, if: 'self.pessoa_jurídica?'
    

    def complete_name
      if self.pessoa_física?
        self.personal_name
      else 
        self.social_reason
      end
    end

    def address_present?
      self.cep.present? || 
      self.state_id.present? ||
      self.city.present? || 
      self.address.present? ||
      self.complement_address.present?
    end

    def contact_present?
      self.supplier_contacts.present?
    end

    def complement_present?
      self.observation.present?
    end
  end
end
