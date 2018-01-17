require "apartment/adapters/abstract_jdbc_adapter"

module Apartment

  module Tenant
    def self.jdbc_mysql_adapter(config)
      adapter = Adapters::JDBCMysqlAdapter.new(config)
      adapter.process_excluded_models
      adapter
    end
  end

  module Adapters
    class JDBCMysqlAdapter < AbstractJDBCAdapter

      def initialize(config)
        super
        Apartment.connection_handler = ActiveRecord::ConnectionAdapters::ConnectionHandler.new
        reset
      end

      def reset_on_connection_exception?
        true
      end
    end
  end
end
