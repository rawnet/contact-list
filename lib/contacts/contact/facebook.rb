class Contacts::Contact::Facebook < Struct.new(:uid, :name)
  
  def self.parse hash
    new hash['id'], hash['name']
  end
  
  def image_url
    "http://graph.facebook.com/#{uid}/picture"
  end
  
end