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

        def after_initialize(client)
          value = client.config.s3_use_arn_region
          return if [true, false].include?(value)

          raise ArgumentError, "Expected :s3_use_arn_region to be true or false, got #{value.inspect}"
        end

        class << self
          private

          def resolve_s3_use_arn_region(config)
            value =
              ENV['AWS_S3_USE_ARN_REGION'] ||
              Aws.shared_config.profiles.fetch(config.profile, {})['s3_use_arn_region'] ||
              'true'
            return value.downcase if %w[true false].include?(value.downcase)

            raise ArgumentError,
                  'The `AWS_S3_USE_ARN_REGION` environment variable or the `s3_use_arn_region` profile config ' \
                  "must be true or false, got #{value.inspect}"
          end
        end
      end
    end
  end
end
