json.extract! process_step, :id, :name, :sort, :active_status, :created_at, :updated_at
json.url process_step_url(process_step, format: :json)