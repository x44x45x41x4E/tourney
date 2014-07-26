require 'rails_helper'

RSpec.describe "messagers/show", :type => :view do
  before(:each) do
    @messager = assign(:messager, Messager.create!(
      :message_type => "Message Type",
      :user => nil,
      :shortcode => "Shortcode",
      :message_id => "Message",
      :message => "MyText",
      :client_id => "Client",
      :secret_key => "Secret Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Shortcode/)
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Secret Key/)
  end
end
