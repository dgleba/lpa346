class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  #validates :question_id, uniqueness: { scope: :user_id,
  #message: "User has already logged an answer to this question" }
end
