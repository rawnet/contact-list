require 'rubygems'

require 'active_support/core_ext/hash/slice'
require 'active_support/core_ext/class/inheritable_attributes'
require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/object/blank'
require 'active_support/inflector'

class Hash
  alias_method :only,  :slice
  alias_method :only!, :slice!
end
require File.expand_path('../contacts', __FILE__)