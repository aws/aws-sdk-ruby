# frozen_string_literal: true

module Aws
  module KinesisAnalytics
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-kinesisanalytics.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::KinesisAnalytics
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
