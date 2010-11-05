require 'oauth2'

module Contacts
  module Provider
    class OAuth2 < Contacts::Provider::Base
      set_valid_attributes :token, :consumer_key, :consumer_secret
      
      def client
        @client ||= ::OAuth2::Client.new(consumer_key, consumer_secret, :site => site_url)
      end
      
      def connect!
        ::OAuth2::AccessToken.new(client, token)
      end
      
    end
  end      
end