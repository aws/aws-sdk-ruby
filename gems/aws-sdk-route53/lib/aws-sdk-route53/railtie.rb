# frozen_string_literal: true

module Aws
  module Route53
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-route53.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Route53
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
