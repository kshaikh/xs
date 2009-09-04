require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/servers/index.html.erb" do
  include ServersHelper

  before(:each) do
    assigns[:servers] = [
      stub_model(Server,
        :ip => "value for ip",
        :response => 1.5
      ),
      stub_model(Server,
        :ip => "value for ip",
        :response => 1.5
      )
    ]
  end

  it "renders a list of servers" do
    render
    response.should have_tag("tr>td", "value for ip".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
  end
end
