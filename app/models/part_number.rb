class PartNumber < ApplicationRecord
  default_scope { order( { sort: :asc }, { name: :asc } ) }
end
