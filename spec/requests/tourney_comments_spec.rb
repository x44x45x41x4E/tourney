require 'rails_helper'

RSpec.describe "TourneyComments", :type => :request do
  describe "GET /tourney_comments" do
    it "works! (now write some real specs)" do
      get tourney_comments_path
      expect(response.status).to be(200)
    end
  end
end
