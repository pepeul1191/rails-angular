module ActiveRecordExtension

    extend ActiveSupport::Concern

    def execute_statement(sql)
        results = ActiveRecord::Base.connection.execute(sql)
        if results.present?
            return results
        else
            return nil
        end
    end

    # http://stackoverflow.com/questions/2328984/rails-extending-activerecordbase
end