class Contacts::Contact::Google < Struct.new(:email, :name)

  def self.parse xml
    name = xml.css("title").text
    email_node = xml.xpath("gd:email").first
    return nil unless email_node.present?
    email = email_node['address'] 
    new(email, name)
  end
  
end