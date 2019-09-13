$:.push File.expand_path("../lib", __FILE__)
$:.push File.expand_path("../app", __FILE__)

# Maintain your gem's version:
require "searchbox/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "searchbox-rails"
  s.version     = Searchbox::Rails::VERSION
  s.authors     = ["Marcelo Piva"]
  s.email       = ["m.pivaa@gmail.com"]
  s.homepage    = "http://github.com/tracersoft/searchbox-rails"
  s.summary     = "Rails cells for build advanced search based on searchbox"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails"
  s.add_dependency "cells"
  s.add_dependency "cells-erb"
  s.add_dependency "sass-rails"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry"
end