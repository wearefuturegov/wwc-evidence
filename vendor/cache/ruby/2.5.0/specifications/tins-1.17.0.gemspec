# -*- encoding: utf-8 -*-
# stub: tins 1.17.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tins".freeze
  s.version = "1.17.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Florian Frank".freeze]
  s.date = "2018-10-15"
  s.description = "All the stuff that isn't good/big enough for a real library.".freeze
  s.email = "flori@ping.de".freeze
  s.extra_rdoc_files = ["README.md".freeze, "lib/dslkit.rb".freeze, "lib/dslkit/polite.rb".freeze, "lib/dslkit/rude.rb".freeze, "lib/spruz.rb".freeze, "lib/tins.rb".freeze, "lib/tins/alias.rb".freeze, "lib/tins/annotate.rb".freeze, "lib/tins/ask_and_send.rb".freeze, "lib/tins/attempt.rb".freeze, "lib/tins/bijection.rb".freeze, "lib/tins/case_predicate.rb".freeze, "lib/tins/complete.rb".freeze, "lib/tins/concern.rb".freeze, "lib/tins/count_by.rb".freeze, "lib/tins/date_dummy.rb".freeze, "lib/tins/date_time_dummy.rb".freeze, "lib/tins/deep_const_get.rb".freeze, "lib/tins/deep_dup.rb".freeze, "lib/tins/dslkit.rb".freeze, "lib/tins/duration.rb".freeze, "lib/tins/expose.rb".freeze, "lib/tins/extract_last_argument_options.rb".freeze, "lib/tins/file_binary.rb".freeze, "lib/tins/find.rb".freeze, "lib/tins/generator.rb".freeze, "lib/tins/go.rb".freeze, "lib/tins/hash_symbolize_keys_recursive.rb".freeze, "lib/tins/hash_union.rb".freeze, "lib/tins/if_predicate.rb".freeze, "lib/tins/implement.rb".freeze, "lib/tins/limited.rb".freeze, "lib/tins/lines_file.rb".freeze, "lib/tins/memoize.rb".freeze, "lib/tins/method_description.rb".freeze, "lib/tins/minimize.rb".freeze, "lib/tins/module_group.rb".freeze, "lib/tins/named_set.rb".freeze, "lib/tins/null.rb".freeze, "lib/tins/once.rb".freeze, "lib/tins/p.rb".freeze, "lib/tins/partial_application.rb".freeze, "lib/tins/proc_compose.rb".freeze, "lib/tins/proc_prelude.rb".freeze, "lib/tins/range_plus.rb".freeze, "lib/tins/require_maybe.rb".freeze, "lib/tins/responding.rb".freeze, "lib/tins/secure_write.rb".freeze, "lib/tins/sexy_singleton.rb".freeze, "lib/tins/string_byte_order_mark.rb".freeze, "lib/tins/string_camelize.rb".freeze, "lib/tins/string_underscore.rb".freeze, "lib/tins/string_version.rb".freeze, "lib/tins/subhash.rb".freeze, "lib/tins/temp_io.rb".freeze, "lib/tins/temp_io_enum.rb".freeze, "lib/tins/terminal.rb".freeze, "lib/tins/thread_local.rb".freeze, "lib/tins/time_dummy.rb".freeze, "lib/tins/to.rb".freeze, "lib/tins/to_proc.rb".freeze, "lib/tins/token.rb".freeze, "lib/tins/uniq_by.rb".freeze, "lib/tins/unit.rb".freeze, "lib/tins/version.rb".freeze, "lib/tins/write.rb".freeze, "lib/tins/xt.rb".freeze, "lib/tins/xt/annotate.rb".freeze, "lib/tins/xt/ask_and_send.rb".freeze, "lib/tins/xt/attempt.rb".freeze, "lib/tins/xt/blank.rb".freeze, "lib/tins/xt/case_predicate.rb".freeze, "lib/tins/xt/complete.rb".freeze, "lib/tins/xt/concern.rb".freeze, "lib/tins/xt/count_by.rb".freeze, "lib/tins/xt/date_dummy.rb".freeze, "lib/tins/xt/date_time_dummy.rb".freeze, "lib/tins/xt/deep_const_get.rb".freeze, "lib/tins/xt/deep_dup.rb".freeze, "lib/tins/xt/dslkit.rb".freeze, "lib/tins/xt/expose.rb".freeze, "lib/tins/xt/extract_last_argument_options.rb".freeze, "lib/tins/xt/file_binary.rb".freeze, "lib/tins/xt/full.rb".freeze, "lib/tins/xt/hash_symbolize_keys_recursive.rb".freeze, "lib/tins/xt/hash_union.rb".freeze, "lib/tins/xt/if_predicate.rb".freeze, "lib/tins/xt/implement.rb".freeze, "lib/tins/xt/irb.rb".freeze, "lib/tins/xt/method_description.rb".freeze, "lib/tins/xt/named.rb".freeze, "lib/tins/xt/null.rb".freeze, "lib/tins/xt/p.rb".freeze, "lib/tins/xt/partial_application.rb".freeze, "lib/tins/xt/proc_compose.rb".freeze, "lib/tins/xt/proc_prelude.rb".freeze, "lib/tins/xt/range_plus.rb".freeze, "lib/tins/xt/require_maybe.rb".freeze, "lib/tins/xt/responding.rb".freeze, "lib/tins/xt/secure_write.rb".freeze, "lib/tins/xt/sexy_singleton.rb".freeze, "lib/tins/xt/string.rb".freeze, "lib/tins/xt/string_byte_order_mark.rb".freeze, "lib/tins/xt/string_camelize.rb".freeze, "lib/tins/xt/string_underscore.rb".freeze, "lib/tins/xt/string_version.rb".freeze, "lib/tins/xt/subhash.rb".freeze, "lib/tins/xt/temp_io.rb".freeze, "lib/tins/xt/time_dummy.rb".freeze, "lib/tins/xt/time_freezer.rb".freeze, "lib/tins/xt/to.rb".freeze, "lib/tins/xt/uniq_by.rb".freeze, "lib/tins/xt/write.rb".freeze]
  s.files = ["README.md".freeze, "lib/dslkit.rb".freeze, "lib/dslkit/polite.rb".freeze, "lib/dslkit/rude.rb".freeze, "lib/spruz.rb".freeze, "lib/tins.rb".freeze, "lib/tins/alias.rb".freeze, "lib/tins/annotate.rb".freeze, "lib/tins/ask_and_send.rb".freeze, "lib/tins/attempt.rb".freeze, "lib/tins/bijection.rb".freeze, "lib/tins/case_predicate.rb".freeze, "lib/tins/complete.rb".freeze, "lib/tins/concern.rb".freeze, "lib/tins/count_by.rb".freeze, "lib/tins/date_dummy.rb".freeze, "lib/tins/date_time_dummy.rb".freeze, "lib/tins/deep_const_get.rb".freeze, "lib/tins/deep_dup.rb".freeze, "lib/tins/dslkit.rb".freeze, "lib/tins/duration.rb".freeze, "lib/tins/expose.rb".freeze, "lib/tins/extract_last_argument_options.rb".freeze, "lib/tins/file_binary.rb".freeze, "lib/tins/find.rb".freeze, "lib/tins/generator.rb".freeze, "lib/tins/go.rb".freeze, "lib/tins/hash_symbolize_keys_recursive.rb".freeze, "lib/tins/hash_union.rb".freeze, "lib/tins/if_predicate.rb".freeze, "lib/tins/implement.rb".freeze, "lib/tins/limited.rb".freeze, "lib/tins/lines_file.rb".freeze, "lib/tins/memoize.rb".freeze, "lib/tins/method_description.rb".freeze, "lib/tins/minimize.rb".freeze, "lib/tins/module_group.rb".freeze, "lib/tins/named_set.rb".freeze, "lib/tins/null.rb".freeze, "lib/tins/once.rb".freeze, "lib/tins/p.rb".freeze, "lib/tins/partial_application.rb".freeze, "lib/tins/proc_compose.rb".freeze, "lib/tins/proc_prelude.rb".freeze, "lib/tins/range_plus.rb".freeze, "lib/tins/require_maybe.rb".freeze, "lib/tins/responding.rb".freeze, "lib/tins/secure_write.rb".freeze, "lib/tins/sexy_singleton.rb".freeze, "lib/tins/string_byte_order_mark.rb".freeze, "lib/tins/string_camelize.rb".freeze, "lib/tins/string_underscore.rb".freeze, "lib/tins/string_version.rb".freeze, "lib/tins/subhash.rb".freeze, "lib/tins/temp_io.rb".freeze, "lib/tins/temp_io_enum.rb".freeze, "lib/tins/terminal.rb".freeze, "lib/tins/thread_local.rb".freeze, "lib/tins/time_dummy.rb".freeze, "lib/tins/to.rb".freeze, "lib/tins/to_proc.rb".freeze, "lib/tins/token.rb".freeze, "lib/tins/uniq_by.rb".freeze, "lib/tins/unit.rb".freeze, "lib/tins/version.rb".freeze, "lib/tins/write.rb".freeze, "lib/tins/xt.rb".freeze, "lib/tins/xt/annotate.rb".freeze, "lib/tins/xt/ask_and_send.rb".freeze, "lib/tins/xt/attempt.rb".freeze, "lib/tins/xt/blank.rb".freeze, "lib/tins/xt/case_predicate.rb".freeze, "lib/tins/xt/complete.rb".freeze, "lib/tins/xt/concern.rb".freeze, "lib/tins/xt/count_by.rb".freeze, "lib/tins/xt/date_dummy.rb".freeze, "lib/tins/xt/date_time_dummy.rb".freeze, "lib/tins/xt/deep_const_get.rb".freeze, "lib/tins/xt/deep_dup.rb".freeze, "lib/tins/xt/dslkit.rb".freeze, "lib/tins/xt/expose.rb".freeze, "lib/tins/xt/extract_last_argument_options.rb".freeze, "lib/tins/xt/file_binary.rb".freeze, "lib/tins/xt/full.rb".freeze, "lib/tins/xt/hash_symbolize_keys_recursive.rb".freeze, "lib/tins/xt/hash_union.rb".freeze, "lib/tins/xt/if_predicate.rb".freeze, "lib/tins/xt/implement.rb".freeze, "lib/tins/xt/irb.rb".freeze, "lib/tins/xt/method_description.rb".freeze, "lib/tins/xt/named.rb".freeze, "lib/tins/xt/null.rb".freeze, "lib/tins/xt/p.rb".freeze, "lib/tins/xt/partial_application.rb".freeze, "lib/tins/xt/proc_compose.rb".freeze, "lib/tins/xt/proc_prelude.rb".freeze, "lib/tins/xt/range_plus.rb".freeze, "lib/tins/xt/require_maybe.rb".freeze, "lib/tins/xt/responding.rb".freeze, "lib/tins/xt/secure_write.rb".freeze, "lib/tins/xt/sexy_singleton.rb".freeze, "lib/tins/xt/string.rb".freeze, "lib/tins/xt/string_byte_order_mark.rb".freeze, "lib/tins/xt/string_camelize.rb".freeze, "lib/tins/xt/string_underscore.rb".freeze, "lib/tins/xt/string_version.rb".freeze, "lib/tins/xt/subhash.rb".freeze, "lib/tins/xt/temp_io.rb".freeze, "lib/tins/xt/time_dummy.rb".freeze, "lib/tins/xt/time_freezer.rb".freeze, "lib/tins/xt/to.rb".freeze, "lib/tins/xt/uniq_by.rb".freeze, "lib/tins/xt/write.rb".freeze]
  s.homepage = "https://github.com/flori/tins".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--title".freeze, "Tins - Useful stuff.".freeze, "--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Useful stuff.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3.1"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.1"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
