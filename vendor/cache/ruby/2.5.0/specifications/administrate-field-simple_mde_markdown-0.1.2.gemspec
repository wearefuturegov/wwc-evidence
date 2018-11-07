# -*- encoding: utf-8 -*-
# stub: administrate-field-simple_mde_markdown 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-simple_mde_markdown".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stuart Harrison".freeze]
  s.date = "2018-10-26"
  s.description = "A plugin for markdown fields in Administrate using SimpleMDE".freeze
  s.email = ["dev@wearefuturegov.com".freeze]
  s.homepage = "https://github.com/wearefuturegov/administrate-field-simple_mde_markdown".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A plugin for markdown fields in Administrate using SimpleMDE".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
      s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 1.17.0"])
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
      s.add_dependency(%q<kramdown>.freeze, ["~> 1.17.0"])
      s.add_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<administrate>.freeze, ["< 1", "> 0.8"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 1.17.0"])
    s.add_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
