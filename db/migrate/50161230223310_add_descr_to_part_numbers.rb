class AddDescrToPartNumbers < ActiveRecord::Migration[5.0]
  def change
    add_column :part_numbers, :description, :string
  end
end
