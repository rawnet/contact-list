module Contacts
  module Provider
    autoload :Base,     'contacts/provider/base'
    autoload :OAuth,    'contacts/provider/oauth'
    autoload :Google,   'contacts/provider/google'
    autoload :Yahoo,    'contacts/provider/yahoo'
    autoload :Twitter,  'contacts/provider/twitter'
    autoload :OAuth2,   'contacts/provider/oauth2'
    autoload :Facebook, 'contacts/provider/facebook'
    autoload :Linkedin, 'contacts/provider/linkedin'
    
    def self.all
      [Google, Yahoo, Twitter, Facebook, Linkedin]
    end
    
    def self.find provider_id
      all.find { |provider| provider.provider_id == provider_id.to_s }
    end
    
  end
end