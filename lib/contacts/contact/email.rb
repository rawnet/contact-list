class Contacts::Contact::Email < Struct.new(:email, :name)
  
  def self.parse *args
    raise "implement in subclass"
  end
  
end