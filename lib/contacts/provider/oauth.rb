require 'oauth'

module Contacts
  module Provider
    class OAuth < Contacts::Provider::Base
      set_valid_attributes :token, :secret, :consumer_key, :consumer_secret, :uid
      
      def consumer
        @consumer ||= ::OAuth::Consumer.new(consumer_key, consumer_secret, :site => site_url)
      end
      
      def connect!
        ::OAuth::AccessToken.new(consumer, token, secret)
      end
      
    end
  end      
end