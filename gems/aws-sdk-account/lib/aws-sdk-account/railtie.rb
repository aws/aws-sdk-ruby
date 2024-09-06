# frozen_string_literal: true

module Aws
  module Account
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-account.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Account
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
