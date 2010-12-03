class Contacts::Contact::Twitter < Struct.new(:uid, :screen_name, :name, :image_url)
  
  def self.parse hash
    new hash['id'].to_s, hash['screen_name'], hash['name'], hash['profile_image_url']
  end
  
end