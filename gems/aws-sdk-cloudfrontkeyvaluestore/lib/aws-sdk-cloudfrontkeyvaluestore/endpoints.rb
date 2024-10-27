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
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end

    class DescribeKeyValueStore
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end

    class GetKey
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end

    class ListKeys
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end

    class PutKey
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end

    class UpdateKeys
      def self.build(context)
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(
          context.config,
          kvs_arn: context.params[:kvs_arn],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :delete_key
        DeleteKey.build(context)
      when :describe_key_value_store
        DescribeKeyValueStore.build(context)
      when :get_key
        GetKey.build(context)
      when :list_keys
        ListKeys.build(context)
      when :put_key
        PutKey.build(context)
      when :update_keys
        UpdateKeys.build(context)
      else
        Aws::CloudFrontKeyValueStore::EndpointParameters.create(context.config)
      end
    end
  end
end
