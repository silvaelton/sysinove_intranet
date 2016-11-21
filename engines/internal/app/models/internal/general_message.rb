module Internal
  class GeneralMessage < ApplicationRecord
    validates :content, presence: true
  end
end
