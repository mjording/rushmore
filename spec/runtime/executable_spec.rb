require 'spec_helper'

describe "Running bin/* commands" do
  it "should be available and return a sting " do
      system('rushmore deploy').should == true
  end
end