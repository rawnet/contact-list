require 'rubygems'
require 'rspec'
require 'rails/all'
require File.expand_path(File.dirname(__FILE__) + '/../lib/contacts_list.rb')

Dir[File.expand_path(File.dirname(__FILE__) + '/support/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
  config.include ProviderSpecHelper
  config.extend  ProviderSpecHelper
end
