json.extract! answer, :id, :body, :user_id, :question_id, :issue_description, :action_taken, :created_at, :updated_at
json.url answer_url(answer, format: :json)
