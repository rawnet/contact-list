class Contacts::Provider::Facebook < Contacts::Provider::OAuth2
  set_site_url 'https://graph.facebook.com'
  
  def retrieve_contacts!
    @contacts_response = connection.get("/me/friends")
  end
  
  def parse_contacts!
    @contacts = MultiJson.decode(contacts_response.body)['data'].map { |contact| Contacts::Contact::Facebook.parse(contact) }.compact
  end
   
end 