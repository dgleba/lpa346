class AuditCount < ApplicationRecord
    
  # specify table name if it breaks Rails conventions
  self.table_name = 'part_numbers'
  # we can specify prefix, no need when using with 'dbo.' 
  #  self.table_name_prefix = 'dbo.' 
  # specify primary key name if it's other than id
  #  self.primary_key = 'id_virtual_channel'
  #default_scope { order('date_time DESC') }
  #default_scope ->{ order('date_time DESC') }

    def self.acount_qry
        # raw sql select using ...
        AuditCount.find_by_sql \
          <<-SQL
          
          select part_numbers.name, Upper(part_numbers.name) as upname from pfeatures
         
          SQL
    end    


end