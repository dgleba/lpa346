class AddTypeToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :qtype, :integer, default: 0
  end
end
