# frozen_string_literal: true

require_relative '../arn/outpost_access_point_arn'
require_relative '../arn/outpost_bucket_arn'

module Aws
  module S3Control
    module Plugins
      # Deprecated in favor of new endpoint generation.
      # @api private
      class ARN < Seahorse::Client::Plugin
        option(
          :s3_use_arn_region,
          default: true,
          doc_type: 'Boolean',
          docstring: <<-DOCS) do |cfg|
For S3 and S3 Outposts ARNs passed into the `:bucket` or `:name`
parameter, this option will use the region in the ARN, allowing
for cross-region requests to be made. Set to `false` to use the
client's region instead.
        DOCS
          resolve_s3_use_arn_region(cfg)
        end

        class << self
          private

          def resolve_s3_use_arn_region(cfg)
            value = ENV['AWS_S3_USE_ARN_REGION'] ||
                    Aws.shared_config.s3_use_arn_region(profile: cfg.profile) ||
                    'true'
            value = Aws::Util.str_2_bool(value)
            # Raise if provided value is not true or false
            if value.nil?
              raise ArgumentError,
                    'Must provide either `true` or `false` for the '\
                    '`s3_use_arn_region` profile option or for '\
                    "ENV['AWS_S3_USE_ARN_REGION']."
            end
            value
          end
        end
      end
    end
  end
end
