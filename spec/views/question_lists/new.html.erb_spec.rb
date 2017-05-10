require 'rails_helper'

RSpec.describe "question_lists/new", type: :view do
  before(:each) do
    assign(:question_list, QuestionList.new(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders new question_list form" do
    render

    assert_select "form[action=?][method=?]", question_lists_path, "post" do

      assert_select "input#question_list_name[name=?]", "question_list[name]"

      assert_select "input#question_list_sort[name=?]", "question_list[sort]"

      assert_select "input#question_list_active_status[name=?]", "question_list[active_status]"
    end
  end
end
