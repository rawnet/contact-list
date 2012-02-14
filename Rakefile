require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "contact-list"
    gem.summary = %Q{Find contacts from multiple providers}
    gem.description = %Q{Find contacts from multiple providers}
    gem.email = ["alex@rawnet.com", "tom@rawnet.com", 'paul.bowsher@gmail.com']
    gem.authors = ["Alex Neill", "Tom Warner", 'Paul Bowsher']
    gem.files = FileList['lib/**/*'].to_a
    gem.add_dependency("activesupport", ">= 2.1.0")
    gem.add_dependency("multi_json", "~> 1.0.4")
    gem.add_dependency("nokogiri", "~> 1.5.0")
    gem.add_dependency("oauth", "~> 0.4.5")
    gem.add_dependency("oauth2", "~> 0.5.2")
    gem.add_development_dependency('rspec', '~> 2.0')
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
