require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/servers/show.html.erb" do
  include ServersHelper
  before(:each) do
    assigns[:server] = @server = stub_model(Server,
      :ip => "value for ip",
      :response => 1.5
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ ip/)
    response.should have_text(/1\.5/)
  end
end
