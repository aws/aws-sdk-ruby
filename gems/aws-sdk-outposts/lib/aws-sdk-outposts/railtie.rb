# frozen_string_literal: true

module Aws
  module Outposts
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-outposts.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::Outposts
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
