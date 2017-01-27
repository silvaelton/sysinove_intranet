module SiteCore
  class Page < ApplicationRecord
    validates :name, :content, presence: true
  end
end
