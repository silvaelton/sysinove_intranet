module Commercial
  class Newsletter < ApplicationRecord
    validates :title, :content, presence: true
  end
end
