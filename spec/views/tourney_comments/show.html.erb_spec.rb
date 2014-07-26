require 'rails_helper'

RSpec.describe "tourney_comments/show", :type => :view do
  before(:each) do
    @tourney_comment = assign(:tourney_comment, TourneyComment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
