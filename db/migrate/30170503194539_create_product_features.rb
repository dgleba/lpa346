class CreateProductFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :product_features do |t|
      t.string :name
      t.references :product, foreign_key: true
      t.references :pfeature, foreign_key: true
      t.integer :active_status
      t.integer :sort

      t.timestamps
    end
  end
end
