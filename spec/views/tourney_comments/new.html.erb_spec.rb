require 'rails_helper'

RSpec.describe "tourney_comments/new", :type => :view do
  before(:each) do
    assign(:tourney_comment, TourneyComment.new())
  end

  it "renders new tourney_comment form" do
    render

    assert_select "form[action=?][method=?]", tourney_comments_path, "post" do
    end
  end
end
