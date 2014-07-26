require 'rails_helper'

RSpec.describe "tourney_comments/index", :type => :view do
  before(:each) do
    assign(:tourney_comments, [
      TourneyComment.create!(),
      TourneyComment.create!()
    ])
  end

  it "renders a list of tourney_comments" do
    render
  end
end
