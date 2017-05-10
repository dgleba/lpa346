require 'rails_helper'

RSpec.describe "question_lists/edit", type: :view do
  before(:each) do
    @question_list = assign(:question_list, QuestionList.create!(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders the edit question_list form" do
    render

    assert_select "form[action=?][method=?]", question_list_path(@question_list), "post" do

      assert_select "input#question_list_name[name=?]", "question_list[name]"

      assert_select "input#question_list_sort[name=?]", "question_list[sort]"

      assert_select "input#question_list_active_status[name=?]", "question_list[active_status]"
    end
  end
end
