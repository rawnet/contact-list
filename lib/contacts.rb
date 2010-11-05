module Contacts
  autoload :Provider, 'contacts/provider'
  autoload :Contact,  'contacts/contact'
  
  def self.[] provider_id
    Provider.find(provider_id.to_s) || error_with!(provider_id)
  end

  private

  def self.error_with! provider_id
    raise("Invalid provider_id #{provider_id.to_s.inspect}, available provider_id; #{Provider.all.map(&:provider_id).to_sentence}")
  end
end