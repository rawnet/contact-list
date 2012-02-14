require 'multi_json'
class Contacts::Provider::Linkedin < Contacts::Provider::OAuth
  set_site_url 'http://api.linkedin.com'
  
  def retrieve_contacts!
    @connections_response = connection.get("/v1/people/~/connections:(first-name,last-name,id,headline,picture-url)")
  end

  def parse_contacts!
    MultiJson.decode(contacts_response.body)['values'].map { |contact| Contacts::Contact::Linkedin.parse(contact) }.compact
  end
  
end