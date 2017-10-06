class CreateJoinTablePartNumberProcessSteps < ActiveRecord::Migration[5.0]
  def change
        create_join_table :part_numbers, :process_steps, table_name: :part_numbers_process_steps, \
          column_options: { index: true }  do |t|
        # create_join_table :part_numbers, :process_steps do |t|
      # t.index [:part_number_id, :process_step_id]
      # t.index [:process_step_id, :part_number_id]
    end
  end
end
