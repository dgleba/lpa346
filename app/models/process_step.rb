class ProcessStep < ApplicationRecord
  default_scope { order( { sort: :asc }, { name: :asc } ) }
end
