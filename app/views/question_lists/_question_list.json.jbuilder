json.extract! question_list, :id, :name, :sort, :active_status, :created_at, :updated_at
json.url question_list_url(question_list, format: :json)
