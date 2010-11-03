module Contacts
  module Contact
    autoload :Google,   'contacts/contact/google'
    autoload :Yahoo,    'contacts/contact/yahoo'
    autoload :Facebook, 'contacts/contact/facebook'
    autoload :Twitter,  'contacts/contact/twitter'
  end
end