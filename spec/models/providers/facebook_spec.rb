require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Contacts::Provider::Facebook do
  
  def klass
    @klass ||= Contacts::Provider::Facebook    
  end
   
  def instance attrs={}
    @instance ||= klass.new attrs
  end

  it "should have an provider_id of 'facebook'" do
    klass.provider_id.should == 'facebook'
  end
   
  it "should inherit from OAuth2" do
    klass.superclass.should == Contacts::Provider::OAuth2
  end

  def valid_attributes
    { :token => 'A-BIG-ACCESS-KEY', :consumer_key => 'CLIENT-ID', :consumer_secret => 'CLIENT-SECRET' }
  end
   
  context "valid_attributes" do
    it_should_include :token
    it_should_include :consumer_key
    it_should_include :consumer_secret
  end
   
  context "when initialized" do
    before do 
      instance valid_attributes
      @response_body = File.read(File.expand_path(File.dirname(__FILE__) + '/../../files/providers/facebook/valid_contacts')).to_s
      instance.connection.stub!(:get).with("/me/friends").and_return(@response_body)
    end
     
    it "should have 2 contacts" do
      instance.should have(2).contacts
      first = instance.contacts.first
      first.should be_kind_of(Contacts::Contact::Facebook)
      first.name.should == 'Somebody Special'
      first.uid.should == '1312412490158'
      first.image_url.should == 'http://graph.facebook.com/1312412490158/picture'
    end
  end
end