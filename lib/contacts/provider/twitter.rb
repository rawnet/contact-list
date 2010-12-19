require 'multi_json'
class Contacts::Provider::Twitter < Contacts::Provider::OAuth
  set_site_url 'http://api.twitter.com'
  
  def retrieve_contacts!
    {:followers_response => followers_response, :following_response => following_response}
  end

  def parse_contacts!
    followers & following
  end
  
  def followers_response
    @followers_response ||= connection.get("/1/statuses/followers.json")
  end

  def following_response
    @following_response ||= connection.get("/1/statuses/friends.json")
  end

  def followers
    @followers ||= parse_response!(followers_response)
  end
  
  def following
    @following ||= parse_response!(following_response)
  end
  
  def parse_response! response
    MultiJson.decode(response.body).map { |contact| Contacts::Contact::Twitter.parse(contact) }.compact
  end
  
end