# frozen_string_literal: true

module Aws
  module CloudFrontKeyValueStore
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-cloudfrontkeyvaluestore.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::CloudFrontKeyValueStore
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
