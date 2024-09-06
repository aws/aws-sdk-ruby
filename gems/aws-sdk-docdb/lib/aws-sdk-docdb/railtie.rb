# frozen_string_literal: true

module Aws
  module DocDB
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-docdb.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::DocDB
        end
      end
    end

    def self.eager_load!
      constants.each do |constant|
        const_get(constant)
      end
    end
  end
end
