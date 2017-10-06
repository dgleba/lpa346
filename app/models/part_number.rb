class PartNumber < ApplicationRecord
  default_scope { order( { sort: :asc }, { name: :asc } ) }

  # part_number.rb
  has_and_belongs_to_many :process_steps, join_table: :part_numbers_process_steps
    
end
