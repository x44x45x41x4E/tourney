require 'rails_helper'

RSpec.describe "messagers/edit", :type => :view do
  before(:each) do
    @messager = assign(:messager, Messager.create!(
      :message_type => "MyString",
      :user => nil,
      :shortcode => "MyString",
      :message_id => "MyString",
      :message => "MyText",
      :client_id => "MyString",
      :secret_key => "MyString"
    ))
  end

  it "renders the edit messager form" do
    render

    assert_select "form[action=?][method=?]", messager_path(@messager), "post" do

      assert_select "input#messager_message_type[name=?]", "messager[message_type]"

      assert_select "input#messager_user_id[name=?]", "messager[user_id]"

      assert_select "input#messager_shortcode[name=?]", "messager[shortcode]"

      assert_select "input#messager_message_id[name=?]", "messager[message_id]"

      assert_select "textarea#messager_message[name=?]", "messager[message]"

      assert_select "input#messager_client_id[name=?]", "messager[client_id]"

      assert_select "input#messager_secret_key[name=?]", "messager[secret_key]"
    end
  end
end
