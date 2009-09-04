require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/servers/edit.html.erb" do
  include ServersHelper

  before(:each) do
    assigns[:server] = @server = stub_model(Server,
      :new_record? => false,
      :ip => "value for ip",
      :response => 1.5
    )
  end

  it "renders the edit server form" do
    render

    response.should have_tag("form[action=#{server_path(@server)}][method=post]") do
      with_tag('input#server_ip[name=?]', "server[ip]")
      with_tag('input#server_response[name=?]', "server[response]")
    end
  end
end
