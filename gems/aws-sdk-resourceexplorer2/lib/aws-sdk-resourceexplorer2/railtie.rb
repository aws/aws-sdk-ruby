# frozen_string_literal: true

module Aws
  module ResourceExplorer2
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-resourceexplorer2.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::ResourceExplorer2
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
