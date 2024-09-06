# frozen_string_literal: true

module Aws
  module Connect
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-connect.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Connect
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
