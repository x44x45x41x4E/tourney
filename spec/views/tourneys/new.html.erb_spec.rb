require 'rails_helper'

RSpec.describe "tourneys/new", :type => :view do
  before(:each) do
    assign(:tourney, Tourney.new(
      :title => "MyString",
      :desc => "MyText",
      :tourney_type => nil,
      :tourney_comment => nil,
      :tourney_comments => nil,
      :user => nil,
      :venue => nil,
      :game_type => nil
    ))
  end

  it "renders new tourney form" do
    render

    assert_select "form[action=?][method=?]", tourneys_path, "post" do

      assert_select "input#tourney_title[name=?]", "tourney[title]"

      assert_select "textarea#tourney_desc[name=?]", "tourney[desc]"

      assert_select "input#tourney_tourney_type_id[name=?]", "tourney[tourney_type_id]"

      assert_select "input#tourney_tourney_comment_id[name=?]", "tourney[tourney_comment_id]"

      assert_select "input#tourney_tourney_comments_id[name=?]", "tourney[tourney_comments_id]"

      assert_select "input#tourney_user_id[name=?]", "tourney[user_id]"

      assert_select "input#tourney_venue_id[name=?]", "tourney[venue_id]"

      assert_select "input#tourney_game_type_id[name=?]", "tourney[game_type_id]"
    end
  end
end
