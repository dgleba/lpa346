require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title_notused => "Title Notused",
      :survey => nil,
      :qtype => 2,
      :question_note => "MyText",
      :question_whatlookfor => "MyText",
      :question_if_no => "MyText",
      :question_list => nil,
      :active_status => 3,
      :sort => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title Notused/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
