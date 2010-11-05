require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Contacts do
  
  context "finding providers" do
    it "should accept provider_id in []" do
      Contacts.should respond_to(:[])
      Contacts.method(:[]).arity.should == 1
    end
    
    it "should raise error with an invalid provider_id" do
      lambda { Contacts[:waffle] }.should raise_error('Invalid provider_id "waffle", available provider_id; google, yahoo, twitter, and facebook')
    end
    
    it "should find the right Provider when a valid provider_id is passed" do
      Contacts[:facebook].should == Contacts::Provider::Facebook
    end
  end
  
end