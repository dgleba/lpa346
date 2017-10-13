require "rails_helper"

RSpec.describe AuditCountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/audit_counts").to route_to("audit_counts#index")
    end

    it "routes to #new" do
      expect(:get => "/audit_counts/new").to route_to("audit_counts#new")
    end

    it "routes to #show" do
      expect(:get => "/audit_counts/1").to route_to("audit_counts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/audit_counts/1/edit").to route_to("audit_counts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/audit_counts").to route_to("audit_counts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/audit_counts/1").to route_to("audit_counts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/audit_counts/1").to route_to("audit_counts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/audit_counts/1").to route_to("audit_counts#destroy", :id => "1")
    end

  end
end
