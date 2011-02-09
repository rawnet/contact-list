require 'nokogiri'

class Contacts::Provider::Google < Contacts::Provider::OAuth
  set_site_url 'https://www.google.com'
  
  def retrieve_contacts!
    @contacts_response = connection.get("/m8/feeds/contacts/#{uid||'default'}/full?max-results=999")
  end
  
  def parse_contacts!
    @contacts = Nokogiri::XML(contacts_response.body).css("entry").map {|entry| Contacts::Contact::Google.parse(entry)}.compact 
  end

end