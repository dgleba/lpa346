class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :country_of_origin, foreign_key: true
      t.datetime :pdate
      t.integer :active_status
      t.integer :sort

      t.timestamps
    end
  end
end
