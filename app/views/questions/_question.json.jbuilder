json.extract! question, :id, :title_notused, :survey_id, :qtype, :question_note, :question_whatlookfor, :question_if_no, :question_list_id, :active_status, :sort, :created_at, :updated_at
json.url question_url(question, format: :json)
