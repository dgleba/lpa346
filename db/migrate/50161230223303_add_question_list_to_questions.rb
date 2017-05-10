class AddQuestionListToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :question_list, foreign_key: true
  end
end
