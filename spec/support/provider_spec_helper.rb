module ProviderSpecHelper

  def it_should_include(attribute)
    it "should include #{attribute.inspect}" do
      klass.valid_attributes.should include(attribute)
    end
  end
  
  def it_should_respond_to(attribute)
    it "should respond to #{attribute.inspect}" do
      @instance.should respond_to(attribute)
    end
  end  
 
  extend self
  
end