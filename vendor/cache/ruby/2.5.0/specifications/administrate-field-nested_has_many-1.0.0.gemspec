# -*- encoding: utf-8 -*-
# stub: administrate-field-nested_has_many 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-nested_has_many".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Charlton".freeze, "Grayson Wright".freeze]
  s.date = "2018-03-10"
  s.description = "Plugin for nested has_many forms in Administrate".freeze
  s.email = ["nick@nickcharlton.net".freeze, "wright.grayson@gmail.com".freeze]
  s.homepage = "https://github.com/nickcharlton/administrate-field-nested_has_many".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Plugin for nested has_many forms in Administrate".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
      s.add_runtime_dependency(%q<cocoon>.freeze, [">= 1.2.11", "~> 1.2"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
      s.add_dependency(%q<cocoon>.freeze, [">= 1.2.11", "~> 1.2"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
    s.add_dependency(%q<cocoon>.freeze, [">= 1.2.11", "~> 1.2"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
