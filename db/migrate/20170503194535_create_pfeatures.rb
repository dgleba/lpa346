class CreatePfeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :pfeatures do |t|
      t.string :name
      t.datetime :fdate
      t.integer :active_status
      t.integer :sort

      t.timestamps
    end
  end
end
