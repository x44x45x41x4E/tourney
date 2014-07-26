require "rails_helper"

RSpec.describe TourneyCommentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tourney_comments").to route_to("tourney_comments#index")
    end

    it "routes to #new" do
      expect(:get => "/tourney_comments/new").to route_to("tourney_comments#new")
    end

    it "routes to #show" do
      expect(:get => "/tourney_comments/1").to route_to("tourney_comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tourney_comments/1/edit").to route_to("tourney_comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tourney_comments").to route_to("tourney_comments#create")
    end

    it "routes to #update" do
      expect(:put => "/tourney_comments/1").to route_to("tourney_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tourney_comments/1").to route_to("tourney_comments#destroy", :id => "1")
    end

  end
end
