# frozen_string_literal: true

module Aws
  module STS
    # @api private
    module Plugins
      # This plugin adds configuration for regional or global STS endpoints.
      # Actual endpoint resolution is done in the endpoints provider.
      # @api private
      class RegionalEndpoints < Smithy::Client::Plugin
        option(
          :sts_regional_endpoints,
          default: 'regional',
          doc_type: String,
          docstring: <<~DOCS) do |config|
            Determines whether the SDK will use regional or global STS endpoints.
            The default value is 'regional'. To use global STS endpoints, set this option to 'legacy'.
          DOCS
          resolve_sts_regional_endpoints(config)
        end

        def after_initialize(client)
          value = client.config.sts_regional_endpoints
          return if %w[legacy regional].include?(value)

          raise ArgumentError, "Expected :sts_regional_endpoints to be 'legacy' or 'regional', got #{value.inspect}"
        end

        class << self
          private

          def resolve_sts_regional_endpoints(config)
            value =
              ENV['AWS_STS_REGIONAL_ENDPOINTS'] ||
              Aws::Core.shared_config.profiles.fetch(config.profile, {})['sts_regional_endpoints'] ||
              'regional'
            return value.downcase if %w[legacy regional].include?(value.downcase)

            raise ArgumentError,
                  'The `AWS_STS_REGIONAL_ENDPOINTS` environment variable or the `sts_regional_endpoints` profile config ' \
                  "must be 'legacy' or 'regional', got #{value.inspect}"
          end
        end
      end
    end
  end
end
