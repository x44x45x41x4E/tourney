require 'rails_helper'

RSpec.describe "tourney_comments/edit", :type => :view do
  before(:each) do
    @tourney_comment = assign(:tourney_comment, TourneyComment.create!())
  end

  it "renders the edit tourney_comment form" do
    render

    assert_select "form[action=?][method=?]", tourney_comment_path(@tourney_comment), "post" do
    end
  end
end
