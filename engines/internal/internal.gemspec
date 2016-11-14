$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "internal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "internal"
  s.version     = Internal::VERSION
  s.authors     = ["elton silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "http://github.com/silvaelton/sysinove_intranet.git"
  s.summary     = "Summary of Internal."
  s.description = "Description of Internal."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
