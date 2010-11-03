class Contacts::Contact::Facebook < Struct.new(:uid, :name)
  
  def self.parse hash
    new hash['id'], hash['name']
  end
  
end