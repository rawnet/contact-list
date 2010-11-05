module Contacts
  module Provider
    class Base
      
      class_inheritable_accessor :site_url
      self.site_url = nil
      delegate :site_url, :to => "self.class"

      class_inheritable_accessor :valid_attributes
      self.valid_attributes = []          
      delegate :import_type, :valid_attributes, :to => "self.class"

      attr_reader :contacts_response, :contacts

      def self.set_site_url url
        self.site_url = url
      end

      def self.set_valid_attributes *attrs
        self.valid_attributes = attrs.map!(&:to_sym)
        attr_accessor *attrs
      end

      def self.provider_id
        self.name.demodulize.underscore
      end
      
      def self.all attrs={}
        new(attrs).contacts
      end
      
      def initialize attrs={}
        parse_attributes attrs
      end

      def connect!
        raise "implement in subclass"
      end

      def connection
        @connection ||= connect!
      end

      def retrieve_contacts!
        raise "implement in subclass"
      end
      
      def contacts_response
        @contacts_response ||= retrieve_contacts!
      end

      def parse_contacts!
        raise "implement in subclass"    
      end
      
      def contacts
        @contacts ||= parse_contacts!
      end

      def parse_attributes attrs = {}
        self.attributes = attrs.only(*valid_attributes)   
      end

      def attributes= attrs = {}
        attrs.each do |attr_name, attr_value|
          send("#{attr_name}=", attr_value)
        end
      end

      def attributes
        valid_attributes.inject({}) {|result, attr| result.merge attr => send(attr) }
      end
    end
  end      
end