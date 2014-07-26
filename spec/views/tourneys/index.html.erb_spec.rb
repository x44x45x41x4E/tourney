require 'rails_helper'

RSpec.describe "tourneys/index", :type => :view do
  before(:each) do
    assign(:tourneys, [
      Tourney.create!(
        :title => "Title",
        :desc => "MyText",
        :tourney_type => nil,
        :tourney_comment => nil,
        :tourney_comments => nil,
        :user => nil,
        :venue => nil,
        :game_type => nil
      ),
      Tourney.create!(
        :title => "Title",
        :desc => "MyText",
        :tourney_type => nil,
        :tourney_comment => nil,
        :tourney_comments => nil,
        :user => nil,
        :venue => nil,
        :game_type => nil
      )
    ])
  end

  it "renders a list of tourneys" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
