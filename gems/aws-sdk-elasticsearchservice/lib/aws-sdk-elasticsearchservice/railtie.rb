# frozen_string_literal: true

module Aws
  module ElasticsearchService
    class Railtie < Rails::Railtie
      initializer 'aws-sdk-elasticsearchservice.eager_load' do
        config.before_eager_load do
          config.eager_load_namespaces << Aws::ElasticsearchService
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
