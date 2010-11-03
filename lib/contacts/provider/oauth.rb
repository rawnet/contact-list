require 'oauth'

module Contacts
  module Provider
    class OAuth < Contacts::Provider::Base
      class_inheritable_accessor :site_url
      self.site_url = nil
      delegate :site_url, :to => "self.class"

      def self.set_site_url url
        self.site_url = url
      end
      
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