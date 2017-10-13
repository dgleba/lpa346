require 'rails_helper'

RSpec.describe "audit_counts/index", type: :view do
  before(:each) do
    assign(:audit_counts, [
      AuditCount.create!(
        :process_step => "Process Step",
        :num_audits => 2
      ),
      AuditCount.create!(
        :process_step => "Process Step",
        :num_audits => 2
      )
    ])
  end

  it "renders a list of audit_counts" do
    render
    assert_select "tr>td", :text => "Process Step".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
