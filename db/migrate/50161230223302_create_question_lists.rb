class CreateQuestionLists < ActiveRecord::Migration[5.0]
  def change
    create_table :question_lists do |t|
      t.string :name
      t.string :partnumberguide    ,      limit: 456
      t.integer :sort
      t.integer :active_status

      t.timestamps
    end
  end
end
