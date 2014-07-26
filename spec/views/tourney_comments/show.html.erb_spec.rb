require 'rails_helper'

RSpec.describe "tourney_comments/show", :type => :view do
  before(:each) do
    @tourney_comment = assign(:tourney_comment, TourneyComment.create!(
      :tourney => nil,
      :message => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
