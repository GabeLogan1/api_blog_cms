$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api_blog_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api_blog_cms"
  s.version     = ApiBlogCms::VERSION
  s.authors     = ["OmairAzam"]
  s.email       = ["omairr.azam@gmail.com"]
  s.homepage    = "http://www.google.com"
  s.summary     = "api"
  s.description = "api"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.9"

  s.add_development_dependency "sqlite3"
end
