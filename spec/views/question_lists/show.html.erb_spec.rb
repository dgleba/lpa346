require 'rails_helper'

RSpec.describe "question_lists/show", type: :view do
  before(:each) do
    @question_list = assign(:question_list, QuestionList.create!(
      :name => "Name",
      :sort => 2,
      :active_status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
