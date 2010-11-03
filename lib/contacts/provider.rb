module Contacts
  module Provider
    autoload :Base,   'contacts/provider/base'
    autoload :OAuth,  'contacts/provider/oauth'
    autoload :Google, 'contacts/provider/google'
    autoload :Yahoo,  'contacts/provider/yahoo'
  end
end