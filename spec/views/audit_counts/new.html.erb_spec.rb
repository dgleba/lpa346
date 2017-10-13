require 'rails_helper'

RSpec.describe "audit_counts/new", type: :view do
  before(:each) do
    assign(:audit_count, AuditCount.new(
      :process_step => "MyString",
      :num_audits => 1
    ))
  end

  it "renders new audit_count form" do
    render

    assert_select "form[action=?][method=?]", audit_counts_path, "post" do

      assert_select "input#audit_count_process_step[name=?]", "audit_count[process_step]"

      assert_select "input#audit_count_num_audits[name=?]", "audit_count[num_audits]"
    end
  end
end
