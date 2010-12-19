# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{contact-list}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Neill", "Tom Warner"]
  s.date = %q{2011-01-13}
  s.description = %q{Find contacts from multiple providers}
  s.email = ["alex@rawnet.com", "tom@rawnet.com"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "lib/contact_list.rb",
    "lib/contacts.rb",
    "lib/contacts/contact.rb",
    "lib/contacts/contact/facebook.rb",
    "lib/contacts/contact/google.rb",
    "lib/contacts/contact/twitter.rb",
    "lib/contacts/contact/yahoo.rb",
    "lib/contacts/provider.rb",
    "lib/contacts/provider/base.rb",
    "lib/contacts/provider/facebook.rb",
    "lib/contacts/provider/google.rb",
    "lib/contacts/provider/oauth.rb",
    "lib/contacts/provider/oauth2.rb",
    "lib/contacts/provider/twitter.rb",
    "lib/contacts/provider/yahoo.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Find contacts from multiple providers}
  s.test_files = [
    "spec/models/contacts_spec.rb",
    "spec/models/provider_spec.rb",
    "spec/models/providers/facebook_spec.rb",
    "spec/models/providers/google_spec.rb",
    "spec/models/providers/twitter_spec.rb",
    "spec/models/providers/yahoo_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/provider_spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 3.0.1"])
      s.add_runtime_dependency(%q<oauth>, [">= 0"])
      s.add_runtime_dependency(%q<oauth2>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.0.0.rc"])
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.1"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 0.0.4"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
      s.add_runtime_dependency(%q<oauth>, ["~> 0.4.4"])
    else
      s.add_dependency(%q<rails>, ["= 3.0.1"])
      s.add_dependency(%q<oauth>, [">= 0"])
      s.add_dependency(%q<oauth2>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.0.0.rc"])
      s.add_dependency(%q<rails>, ["~> 3.0.1"])
      s.add_dependency(%q<multi_json>, ["~> 0.0.4"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
      s.add_dependency(%q<oauth>, ["~> 0.4.4"])
    end
  else
    s.add_dependency(%q<rails>, ["= 3.0.1"])
    s.add_dependency(%q<oauth>, [">= 0"])
    s.add_dependency(%q<oauth2>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.0.0.rc"])
    s.add_dependency(%q<rails>, ["~> 3.0.1"])
    s.add_dependency(%q<multi_json>, ["~> 0.0.4"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4.3.1"])
    s.add_dependency(%q<oauth>, ["~> 0.4.4"])
  end
end

