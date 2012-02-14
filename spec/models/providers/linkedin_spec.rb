require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Contacts::Provider::Linkedin do
  
  def klass
    @klass ||= Contacts::Provider::Linkedin
  end
  
  def instance attrs={}
    @instance ||= klass.new(attrs)
  end
  
  def valid_attributes
    {:consumer_key => 'anonymous', :consumer_secret => 'anonymous', :token => 'ACCESS-TOKEN', :secret => 'ACCESS-SECRET'}
  end
  
  it "should have an provider_id of 'linkedin'" do
    klass.provider_id.should == 'linkedin'
  end
  
  it "should extend the OAuth provider" do
    klass.superclass.should == Contacts::Provider::OAuth
  end
  
  context "when initialized" do
    before do 
      instance valid_attributes
      @connections_response = mock('Response')
      @connections_response_body = File.read(File.expand_path(File.dirname(__FILE__) + '/../../files/providers/linkedin/valid_contacts')).to_s
      @connections_response.stub(:body).and_return(@connections_response_body)
      instance.connection.stub!(:get).with("/v1/people/~/connections:(first-name,last-name,id,headline,picture-url)").and_return(@connections_response)
    end
    
    it "should have two contacts" do
      instance.should have(2).contacts
      first = instance.contacts.first
      first.should be_kind_of(Contacts::Contact::Linkedin)
      first.uid.should == 'dddEEEDddw'
      first.first_name.should == 'James'
      first.last_name.should == 'Bob'
      first.image_url.should == 'http://media.linkedin.com/mpr/mprx/0_U-ft05kl4lgYPLBmzvxD06zfewegwegweg06b7b1xYuTKacq0YlQ1TnZIlrGQCsADurTMkxtK6'
    end
    
  end
end
