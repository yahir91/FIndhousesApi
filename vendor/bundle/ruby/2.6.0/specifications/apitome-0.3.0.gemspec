# -*- encoding: utf-8 -*-
# stub: apitome 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "apitome".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["jejacks0n".freeze]
  s.date = "2019-04-13"
  s.description = "API documentation renderer for Rails using RSpec API Documentation JSON output".freeze
  s.email = ["jejacks0n@gmail.com".freeze]
  s.homepage = "https://github.com/jejacks0n/apitome".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.4".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Apitome: /i\u02C8pit\u0259m\u0113/ An API documentation reader RSpec API Documentation".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<kramdown>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec_api_documentation>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 0"])
      s.add_dependency(%q<kramdown>.freeze, [">= 0"])
      s.add_dependency(%q<rspec_api_documentation>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 0"])
    s.add_dependency(%q<kramdown>.freeze, [">= 0"])
    s.add_dependency(%q<rspec_api_documentation>.freeze, [">= 0"])
  end
end
