class Contacts::Contact::Yahoo < Struct.new(:email, :name)

  def self.parse hash
    email, name = '', nil
    hash['fields'].each do |field|
      case field['type']
      when 'email'
        email = field['value']
      when 'name'
        name = [field['value']['givenName'], field['value']['familyName']].join(' ') rescue ''
      end
    end
    name ||= email
    new(email, name) unless email.blank?
  end
  
end