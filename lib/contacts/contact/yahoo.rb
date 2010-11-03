class Contacts::Contact::Yahoo < Struct.new(:uid, :email, :name)

  def self.parse hash
    uid, email, name = '', '', ''
    hash['fields'].each do |field|
      case field['type']
      when 'guid'
        uid = field['value']
      when 'email'
        email = field['value']
      when 'name'
        name = [field['value']['givenName'], field['value']['familyName']].join(' ') rescue ''
      end
    end
    new(uid, email, name)
  end
  
end