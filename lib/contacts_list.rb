require 'rubygems'
require 'active_support'
require 'active_support/core_ext/hash/slice'
class Hash
  alias_method :only,  :slice
  alias_method :only!, :slice!
end
require File.expand_path('../contacts', __FILE__)