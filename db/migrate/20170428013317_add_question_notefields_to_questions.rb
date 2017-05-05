class AddQuestionNotefieldsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :question_note, :text
    add_column :questions, :question_whatlookfor, :text
    add_column :questions, :question_if_no, :text
  end
end
