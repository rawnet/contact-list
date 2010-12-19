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
      @friends_response = mock('Response')
      @friends_response_body = File.read(File.expand_path(File.dirname(__FILE__) + '/../../files/providers/twitter/valid_friends')).to_s
      @friends_response.stub(:body).and_return(@friends_response_body)
      instance.connection.stub!(:get).with("/1/statuses/friends.json").and_return(@friends_response)
      @followers_response = mock('Response')
      @followers_response_body = File.read(File.expand_path(File.dirname(__FILE__) + '/../../files/providers/twitter/valid_followers')).to_s
      @followers_response.stub(:body).and_return(@followers_response_body)
      instance.connection.stub!(:get).with("/1/statuses/followers.json").and_return(@followers_response)
    end
    
    it "should have two contact" do
      instance.should have(1).contact
      first = instance.contacts.first
      first.should be_kind_of(Contacts::Contact::Twitter)
      first.uid.should == '169277120'
      first.screen_name.should == 'rawnet_dev'
      first.name.should == 'Rawnet Development'
      first.image_url.should == 'http://a2.twimg.com/profile_images/1083530406/141466520_normal.jpg'
    end
    
  end
end
