require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :body => "MyText",
        :user => nil,
        :question => nil,
        :issue_description => "MyText",
        :action_taken => "MyText"
      ),
      Answer.create!(
        :body => "MyText",
        :user => nil,
        :question => nil,
        :issue_description => "MyText",
        :action_taken => "MyText"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
