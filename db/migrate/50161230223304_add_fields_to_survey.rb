class AddFieldsToSurvey < ActiveRecord::Migration[5.0]
  def change
    add_column :surveys, :active_status, :integer, :default => 0
    add_column :surveys, :sort, :integer, :default => 0
  end
end
