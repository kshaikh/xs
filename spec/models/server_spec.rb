require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Server do
  before(:each) do
    @valid_attributes = {
      :ip => "value for ip",
      :response => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Server.create!(@valid_attributes)
  end
end
