class ProcessStep < ApplicationRecord
  default_scope { order( { sort: :asc }, { name: :asc } ) }
  
  # process_step.rb
  has_and_belongs_to_many :part_numbers, join_table: :part_numbers_process_steps
   
end
