# frozen_string_literal: true

module Aws
  module IoTAnalytics
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-iotanalytics.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::IoTAnalytics
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
