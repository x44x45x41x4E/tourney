require 'rails_helper'

RSpec.describe "tourney_comments/index", :type => :view do
  before(:each) do
    assign(:tourney_comments, [
      TourneyComment.create!(
        :tourney => nil,
        :message => "MyText",
        :user => nil
      ),
      TourneyComment.create!(
        :tourney => nil,
        :message => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of tourney_comments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
