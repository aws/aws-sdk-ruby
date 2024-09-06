# frozen_string_literal: true

module Aws
  module CodeStar
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-codestar.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::CodeStar
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
