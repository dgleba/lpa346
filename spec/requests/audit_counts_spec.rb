require 'rails_helper'

RSpec.describe "AuditCounts", type: :request do
  describe "GET /audit_counts" do
    it "works! (now write some real specs)" do
      get audit_counts_path
      expect(response).to have_http_status(200)
    end
  end
end
