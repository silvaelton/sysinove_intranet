module Commercial
  class Item < ApplicationRecord
    belongs_to :account
    belongs_to :item_category


    validates :item_category, :name, :description, :quantity, :unit, presence: true
    validates :quantity, numericality: true, allow_blank: true
    validates :value_buy, :max_discount, :value_sell,  numericality: {only_float: true}, allow_blank: true

    enum unit: ['serviço', 'un', 'cx', 'ml', 'cm', 'gr']
  end
end
