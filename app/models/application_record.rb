class ApplicationRecord < ActiveRecord::Base
  	self.abstract_class = true

  	def self.execute_statement(sql, params)
  		if params != false
	  		begin
		        results =  ActiveRecord::Base.connection.raw_connection.prepare(params, sql)
		        if results.present?
		            return results
		        else
		            return nil
		        end
		  	rescue ActiveRecord::StatementInvalid => e
	      		return e
	    	end
	    else
	    	begin
		        results = ActiveRecord::Base.connection.execute(sql)
		        if results.present?
		            return results
		        else
		            return nil
		        end
		  	rescue ActiveRecord::StatementInvalid => e
	      		return e
	    	end
	    end
	end
end
