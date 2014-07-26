require 'rails_helper'

RSpec.describe "messagers/index", :type => :view do
  before(:each) do
    assign(:messagers, [
      Messager.create!(
        :message_type => "Message Type",
        :user => nil,
        :shortcode => "Shortcode",
        :message_id => "Message",
        :message => "MyText",
        :client_id => "Client",
        :secret_key => "Secret Key"
      ),
      Messager.create!(
        :message_type => "Message Type",
        :user => nil,
        :shortcode => "Shortcode",
        :message_id => "Message",
        :message => "MyText",
        :client_id => "Client",
        :secret_key => "Secret Key"
      )
    ])
  end

  it "renders a list of messagers" do
    render
    assert_select "tr>td", :text => "Message Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Shortcode".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Secret Key".to_s, :count => 2
  end
end
