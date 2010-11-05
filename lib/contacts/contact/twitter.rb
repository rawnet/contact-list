class Contacts::Contact::Twitter < Struct.new(:uid, :screen_name, :name)
  
  def self.parse hash
    new hash['id'].to_s, hash['screen_name'], hash['name']
  end
  
end