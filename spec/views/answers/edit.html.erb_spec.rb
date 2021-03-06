require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :body => "MyText",
      :user => nil,
      :question => nil,
      :issue_description => "MyText",
      :action_taken => "MyText"
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea#answer_body[name=?]", "answer[body]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "textarea#answer_issue_description[name=?]", "answer[issue_description]"

      assert_select "textarea#answer_action_taken[name=?]", "answer[action_taken]"
    end
  end
end
