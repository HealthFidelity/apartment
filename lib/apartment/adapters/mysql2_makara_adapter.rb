require 'apartment/adapters/mysql2_adapter'

module Apartment
  module Tenant

    def self.mysql2_makara_adapter(config)
      mysql2_adapter(config)
    end
  end
end
