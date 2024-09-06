# frozen_string_literal: true

module Aws
  module Drs
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-drs.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Drs
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
