require "rails_helper"

RSpec.describe MessagersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/messagers").to route_to("messagers#index")
    end

    it "routes to #new" do
      expect(:get => "/messagers/new").to route_to("messagers#new")
    end

    it "routes to #show" do
      expect(:get => "/messagers/1").to route_to("messagers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/messagers/1/edit").to route_to("messagers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/messagers").to route_to("messagers#create")
    end

    it "routes to #update" do
      expect(:put => "/messagers/1").to route_to("messagers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/messagers/1").to route_to("messagers#destroy", :id => "1")
    end

  end
end
