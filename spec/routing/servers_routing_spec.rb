require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ServersController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "servers", :action => "index").should == "/servers"
    end

    it "maps #new" do
      route_for(:controller => "servers", :action => "new").should == "/servers/new"
    end

    it "maps #show" do
      route_for(:controller => "servers", :action => "show", :id => "1").should == "/servers/1"
    end

    it "maps #edit" do
      route_for(:controller => "servers", :action => "edit", :id => "1").should == "/servers/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "servers", :action => "create").should == {:path => "/servers", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "servers", :action => "update", :id => "1").should == {:path =>"/servers/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "servers", :action => "destroy", :id => "1").should == {:path =>"/servers/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/servers").should == {:controller => "servers", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/servers/new").should == {:controller => "servers", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/servers").should == {:controller => "servers", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/servers/1").should == {:controller => "servers", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/servers/1/edit").should == {:controller => "servers", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/servers/1").should == {:controller => "servers", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/servers/1").should == {:controller => "servers", :action => "destroy", :id => "1"}
    end
  end
end
