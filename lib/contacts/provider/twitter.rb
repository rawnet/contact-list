require 'multi_json'
class Contacts::Provider::Twitter < Contacts::Provider::OAuth
  set_site_url 'http://api.twitter.com'
  
  def retrieve_contacts!
    @contacts_response = connection.get("/1/statuses/friends.json")
  end

  def parse_contacts!
    @contacts = MultiJson.decode(contacts_response.body).map { |contact| Contacts::Contact::Twitter.parse(contact) }.compact
  end
  
end