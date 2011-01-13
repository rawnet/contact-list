require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "contact-list"
    gem.summary = %Q{Find contacts from multiple providers}
    gem.description = %Q{Find contacts from multiple providers}
    gem.email = ["alex@rawnet.com", "tom@rawnet.com"]
    gem.authors = ["Alex Neill", "Tom Warner"]
    gem.files = FileList['lib/**/*'].to_a
    gem.add_dependency("rails", "~> 3.0.1")
    gem.add_dependency("multi_json", "~> 0.0.4")
    gem.add_dependency("nokogiri", "~> 1.4.4")
    gem.add_dependency("oauth", "~> 0.4.4")
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
