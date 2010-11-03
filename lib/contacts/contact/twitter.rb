class Contacts::Contact::Twitter < Struct.new(:screen_name, :name)
  
  def self.parse hash
    new hash['screen_name'], hash['name']
  end
  
end