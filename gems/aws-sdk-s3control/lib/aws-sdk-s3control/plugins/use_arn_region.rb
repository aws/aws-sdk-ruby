# frozen_string_literal: true

module Aws
  module S3Control
    module Plugins
      # This plugin adds configuration for S3 endpoint's UseArnRegion.
      # Actual endpoint resolution is done in the endpoints provider.
      # @api private
      class UseArnRegion < Smithy::Client::Plugin
        option(
          :s3_use_arn_region,
          default: true,
          doc_type: 'Boolean',
          docstring: <<~DOCS) do |config|
            For S3 ARNs passed into the `:bucket` or `:name` parameter, this option will use the region in the ARN,
            allowing for cross-region requests to be made. Set to `false` to use the client's region instead.
          DOCS
          resolve_s3_use_arn_region(config) == 'true'
        end

        class << self
          private

          def resolve_s3_use_arn_region(config)
            ENV['AWS_S3_USE_ARN_REGION'] ||
              Aws::Core.shared_config.profiles.fetch(config.profile, {})['s3_use_arn_region'] ||
              'true'
          end
        end
      end
    end
  end
end
