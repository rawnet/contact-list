module Contacts
  module Contact
    autoload :Email,  'contacts/contact/email'
    autoload :Google, 'contacts/contact/google'
    autoload :Yahoo,  'contacts/contact/yahoo'
  end
end