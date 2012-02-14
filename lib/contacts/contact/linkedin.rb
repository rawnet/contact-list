class Contacts::Contact::Linkedin < Struct.new(:uid, :name, :first_name, :last_name, :image_url)
  
  def self.parse hash
    new hash['id'], "#{hash['firstName']} #{hash['lastName']}", hash['firstName'], hash['lastName'], hash['pictureUrl']
  end
  
end