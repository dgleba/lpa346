FactoryGirl.define do
  factory :audit_count do
    process_step "MyString"
    num_audits 1
  end
end
