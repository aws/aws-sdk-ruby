# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudFrontKeyValueStore
  # @api private
  module Endpoints

    class DeleteKey
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class DescribeKeyValueStore
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class GetKey
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class ListKeys
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class PutKey
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

    class UpdateKeys
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.new(
          kvs_arn: context.params[:kvs_arn],
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          endpoint: context.config.regional_endpoint ? nil : context.config.endpoint.to_s,
        )
      end
    end

  end
end
