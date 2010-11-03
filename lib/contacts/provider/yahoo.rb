require 'multi_json'
class Contacts::Provider::Yahoo < Contacts::Provider::OAuth
  set_site_url 'http://social.yahooapis.com'
  
  def retrieve_contacts!
    @contacts_response = connection.get("/v1/user/me/contacts?format=json")
  end
  
  def parse_contacts!
    @contacts = ((MultiJson.decode(contacts_response.body)['contacts']||{})['contact']||[]).map { |contact| Contacts::Contact::Yahoo.parse(contact) }.compact
  end

end