require 'rails_helper'

RSpec.describe "Messagers", :type => :request do
  describe "GET /messagers" do
    it "works! (now write some real specs)" do
      get messagers_path
      expect(response.status).to be(200)
    end
  end
end
