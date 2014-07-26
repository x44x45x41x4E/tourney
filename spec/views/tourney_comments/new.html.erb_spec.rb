require 'rails_helper'

RSpec.describe "tourney_comments/new", :type => :view do
  before(:each) do
    assign(:tourney_comment, TourneyComment.new(
      :tourney => nil,
      :message => "MyText",
      :user => nil
    ))
  end

  it "renders new tourney_comment form" do
    render

    assert_select "form[action=?][method=?]", tourney_comments_path, "post" do

      assert_select "input#tourney_comment_tourney_id[name=?]", "tourney_comment[tourney_id]"

      assert_select "textarea#tourney_comment_message[name=?]", "tourney_comment[message]"

      assert_select "input#tourney_comment_user_id[name=?]", "tourney_comment[user_id]"
    end
  end
end
