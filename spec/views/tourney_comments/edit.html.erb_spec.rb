require 'rails_helper'

RSpec.describe "tourney_comments/edit", :type => :view do
  before(:each) do
    @tourney_comment = assign(:tourney_comment, TourneyComment.create!(
      :tourney => nil,
      :message => "MyText",
      :user => nil
    ))
  end

  it "renders the edit tourney_comment form" do
    render

    assert_select "form[action=?][method=?]", tourney_comment_path(@tourney_comment), "post" do

      assert_select "input#tourney_comment_tourney_id[name=?]", "tourney_comment[tourney_id]"

      assert_select "textarea#tourney_comment_message[name=?]", "tourney_comment[message]"

      assert_select "input#tourney_comment_user_id[name=?]", "tourney_comment[user_id]"
    end
  end
end
