require 'rails_helper'

RSpec.describe "tourneys/show", :type => :view do
  before(:each) do
    @tourney = assign(:tourney, Tourney.create!(
      :title => "Title",
      :desc => "MyText",
      :tourney_type => nil,
      :tourney_comment => nil,
      :tourney_comments => nil,
      :user => nil,
      :venue => nil,
      :game_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
