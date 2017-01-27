module SiteCore
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
