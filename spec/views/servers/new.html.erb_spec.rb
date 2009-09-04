require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/servers/new.html.erb" do
  include ServersHelper

  before(:each) do
    assigns[:server] = stub_model(Server,
      :new_record? => true,
      :ip => "value for ip",
      :response => 1.5
    )
  end

  it "renders new server form" do
    render

    response.should have_tag("form[action=?][method=post]", servers_path) do
      with_tag("input#server_ip[name=?]", "server[ip]")
      with_tag("input#server_response[name=?]", "server[response]")
    end
  end
end
