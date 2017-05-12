FactoryGirl.define do
  factory :question do
    title_notused "MyString"
    survey nil
    qtype 1
    question_note "MyText"
    question_whatlookfor "MyText"
    question_if_no "MyText"
    question_list nil
    active_status 1
    sort 1
  end
end
