class AddFieldsToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :active_status, :integer, :default => 0
    add_column :questions, :sort, :integer, :default => 0
  end
end
