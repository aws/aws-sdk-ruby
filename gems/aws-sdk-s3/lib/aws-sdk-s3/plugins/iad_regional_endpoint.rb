# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # Configures the S3 client to use either the legacy global endpoint
      # or the regional endpoint for the us-east-1 region.
      class IADRegionalEndpoint < Smithy::Client::Plugin
        option(
          :s3_us_east_1_regional_endpoint,
          default: 'regional',
          doc_type: String,
          docstring: <<~DOCS) do |cfg|
            Pass in `legacy` to enable the global endpoint for `us-east-1`.
            Defaults to `regional` mode which uses the regional endpoint.
          DOCS
          resolve_iad_regional_endpoint(cfg)
        end

        class << self
          private

          def resolve_iad_regional_endpoint(cfg)
            default_mode_value =
              if cfg.respond_to?(:defaults_mode_config_resolver)
                cfg.defaults_mode_config_resolver.resolve(:s3_us_east_1_regional_endpoint)
              end

            mode = ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] ||
                   Aws.shared_config.profiles.fetch(cfg.profile, {})[:s3_us_east_1_regional_endpoint] ||
                   default_mode_value ||
                   'regional'
            mode = mode.downcase
            unless %w[legacy regional].include?(mode)
              raise ArgumentError,
                    "expected :s3_us_east_1_regional_endpoint or ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] to be " \
                    '`legacy` or `regional`.'
            end
            mode
          end
        end
      end
    end
  end
end
