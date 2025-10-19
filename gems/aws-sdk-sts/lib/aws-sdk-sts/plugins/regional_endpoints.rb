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

        class << self
          private

          def resolve_sts_regional_endpoints(config)
            ENV['AWS_STS_REGIONAL_ENDPOINTS'] ||
              Aws::Core.shared_config.profiles.fetch(config.profile, {})['sts_regional_endpoints'] ||
              'regional'
          end
        end
      end
    end
  end
end
