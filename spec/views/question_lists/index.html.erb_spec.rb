require 'rails_helper'

RSpec.describe "question_lists/index", type: :view do
  before(:each) do
    assign(:question_lists, [
      QuestionList.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      ),
      QuestionList.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      )
    ])
  end

  it "renders a list of question_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
