require 'rails_helper'

RSpec.describe "audit_counts/show", type: :view do
  before(:each) do
    @audit_count = assign(:audit_count, AuditCount.create!(
      :process_step => "Process Step",
      :num_audits => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Process Step/)
    expect(rendered).to match(/2/)
  end
end
