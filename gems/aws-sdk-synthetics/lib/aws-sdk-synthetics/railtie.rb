# frozen_string_literal: true

module Aws
  module Synthetics
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-synthetics.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Synthetics
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
