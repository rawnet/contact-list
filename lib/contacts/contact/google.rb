class Contacts::Contact::Google < Contacts::Contact::Email

  def self.parse xml
    name = xml.css("title").text
    email = xml.xpath("gd:email").first['address']
    new(email, name)
  end
  
end