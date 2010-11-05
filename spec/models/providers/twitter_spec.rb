require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Contacts::Provider::Twitter do
  
  def klass
    @klass ||= Contacts::Provider::Twitter    
  end
  
  def instance attrs={}
    @instance ||= klass.new(attrs)
  end
  
  def valid_attributes
    {:consumer_key => 'anonymous', :consumer_secret => 'anonymous', :token => 'ACCESS-TOKEN', :secret => 'ACCESS-SECRET'}
  end
  
  it "should have an provider_id of 'twitter'" do
    klass.provider_id.should == 'twitter'
  end
  
  it "should extend the OAuth provider" do
    klass.superclass.should == Contacts::Provider::OAuth
  end
  
  context "when initialized" do
    before do 
      instance valid_attributes
      @response = mock('Response')
      @response_body = File.read(File.expand_path(File.dirname(__FILE__) + '/../../files/providers/twitter/valid_contacts')).to_s
      @response.stub(:body).and_return(@response_body)
      instance.connection.stub!(:get).with("/1/statuses/friends.json").and_return(@response)
    end
    
    it "should have two contacts" do
      instance.should have(2).contacts
      first = instance.contacts.first
      first.should be_kind_of(Contacts::Contact::Twitter)
      first.screen_name.should == 'rawnet_dev'
      first.name.should == 'Rawnet Development'
    end
    
  end
end
