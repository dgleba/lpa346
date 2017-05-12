require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :title_notused => "Title Notused",
        :survey => nil,
        :qtype => 2,
        :question_note => "MyText",
        :question_whatlookfor => "MyText",
        :question_if_no => "MyText",
        :question_list => nil,
        :active_status => 3,
        :sort => 4
      ),
      Question.create!(
        :title_notused => "Title Notused",
        :survey => nil,
        :qtype => 2,
        :question_note => "MyText",
        :question_whatlookfor => "MyText",
        :question_if_no => "MyText",
        :question_list => nil,
        :active_status => 3,
        :sort => 4
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Title Notused".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
