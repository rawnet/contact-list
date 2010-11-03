class Contacts::Contact::Yahoo < Struct.new(:email, :name)

  def self.parse hash
    email, name = '', ''
    hash['fields'].each do |field|
      case field['type']
      when 'email'
        email = field['value']
      when 'name'
        name = [field['value']['givenName'], field['value']['familyName']].join(' ') rescue ''
      end
    end
    new(email, name)
  end
  
end