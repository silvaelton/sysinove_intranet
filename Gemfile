source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


gem 'haml-rails'
gem 'simple_form'

gem 'has_scope'
gem 'validates_cpf_cnpj'
gem 'validates_timeliness'
gem 'email_validator'
gem 'file_validators'

gem 'fullcalendar-rails'
gem 'momentjs-rails'

gem "brcobranca", :github => "kivanio/brcobranca"

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do 
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


path 'engines' do 
  gem 'internal'
  gem 'customer'
  gem 'commercial'
  gem 'finance'

  gem 'external'
  gem 'site_core'
end
