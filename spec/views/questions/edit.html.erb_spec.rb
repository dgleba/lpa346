require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title_notused => "MyString",
      :survey => nil,
      :qtype => 1,
      :question_note => "MyText",
      :question_whatlookfor => "MyText",
      :question_if_no => "MyText",
      :question_list => nil,
      :active_status => 1,
      :sort => 1
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_title_notused[name=?]", "question[title_notused]"

      assert_select "input#question_survey_id[name=?]", "question[survey_id]"

      assert_select "input#question_qtype[name=?]", "question[qtype]"

      assert_select "textarea#question_question_note[name=?]", "question[question_note]"

      assert_select "textarea#question_question_whatlookfor[name=?]", "question[question_whatlookfor]"

      assert_select "textarea#question_question_if_no[name=?]", "question[question_if_no]"

      assert_select "input#question_question_list_id[name=?]", "question[question_list_id]"

      assert_select "input#question_active_status[name=?]", "question[active_status]"

      assert_select "input#question_sort[name=?]", "question[sort]"
    end
  end
end
