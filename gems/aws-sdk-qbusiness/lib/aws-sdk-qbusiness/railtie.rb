# frozen_string_literal: true

module Aws
  module QBusiness
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-qbusiness.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::QBusiness
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
