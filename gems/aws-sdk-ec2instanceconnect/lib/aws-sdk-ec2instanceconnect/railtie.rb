# frozen_string_literal: true

module Aws
  module EC2InstanceConnect
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-ec2instanceconnect.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::EC2InstanceConnect
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
