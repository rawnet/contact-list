require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Contacts::Provider do
  
  it "should store all the providers" do
    Contacts::Provider.all.should be_kind_of(Array)
    Contacts::Provider.all == [
      Contacts::Provider::Google, 
      Contacts::Provider::Yahoo, 
      Contacts::Provider::Facebook, 
      Contacts::Provider::Twitter
    ]
  end
  
  it "should be able to find provider based on provider_id" do
    Contacts::Provider.find(:facebook).should == Contacts::Provider::Facebook
  end
  
end