class CreateProcessSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :process_steps do |t|
      t.string :name
      t.integer :sort
      t.integer :active_status

      t.timestamps
    end
  end
end
