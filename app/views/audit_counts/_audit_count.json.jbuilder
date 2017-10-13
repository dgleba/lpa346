json.extract! audit_count, :id, :process_step, :num_audits, :created_at, :updated_at
json.url audit_count_url(audit_count, format: :json)
