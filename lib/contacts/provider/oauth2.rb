require 'oauth2'

module Contacts
  module Provider
    class OAuth2 < Contacts::Provider::Base
      set_valid_attributes :code, :client_id, :client_secret
      
      def client
        @client ||= ::OAuth2::Client.new(client_id, client_secret, :site => site_url)
      end
      
      def connect!
        ::OAuth2::AccessToken.new(client, code)
      end
      
    end
  end      
end