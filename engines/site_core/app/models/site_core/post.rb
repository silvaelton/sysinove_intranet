module SiteCore
  class Post < ApplicationRecord

    validates :name, :content, presence: true 
    validates :slider_image, presence: true, if: 'self.slider?'
  end
end
