require "spec_helper"

describe "Running bin/* commands" do
  it "runs the rushmore command" do
     run('rushmore')
     out.should =~ /^rushmore/
  end
  
  
end