module SiteCore
  class Nav < ApplicationRecord
    belongs_to :account

    belongs_to :page, required: false
    belongs_to :post, required: false 

    enum nav_type: ['abrir_página','abrir_postagem', 'abrir_link']
    enum target: ['mesma_página', 'nova_página']
    
    validates :name, presence: true

    validates :post, presence: true, if: 'self.abrir_postagem?'
    validates :page, presence: true, if: 'self.abrir_página?'
    validates :url, presence: true,  if: 'self.abrir_link?'

  end
end
