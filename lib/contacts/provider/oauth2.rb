module Contacts
  module Provider
    class OAuth2 < Contacts::Provider::Base
      set_valid_attributes :code, :consumer_key, :consumer_secret
      
    end
  end      
end