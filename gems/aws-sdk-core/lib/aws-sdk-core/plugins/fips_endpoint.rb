# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class FipsEndpoint < Seahorse::Client::Plugin

      option(:use_fips_endpoint,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |cfg|
When set to `true`, fips compatible endpoints
will be used if available.
        DOCS
        resolve_use_fips_endpoint(cfg)
      end

      private

      def self.resolve_use_fips_endpoint(cfg)
        value = ENV['AWS_USE_FIPS_ENDPOINT']
        value ||= Aws.shared_config.use_fips_endpoint(profile: cfg.profile)
        Aws::Util.str_2_bool(value) || false
      end

    end
  end
end
