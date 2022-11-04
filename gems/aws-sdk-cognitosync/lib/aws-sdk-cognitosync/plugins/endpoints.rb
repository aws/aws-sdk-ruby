# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CognitoSync
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CognitoSync::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CognitoSync::EndpointParameters`'
      ) do |cfg|
        Aws::CognitoSync::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :bulk_publish
            Aws::CognitoSync::Endpoints::BulkPublish.build(context)
          when :delete_dataset
            Aws::CognitoSync::Endpoints::DeleteDataset.build(context)
          when :describe_dataset
            Aws::CognitoSync::Endpoints::DescribeDataset.build(context)
          when :describe_identity_pool_usage
            Aws::CognitoSync::Endpoints::DescribeIdentityPoolUsage.build(context)
          when :describe_identity_usage
            Aws::CognitoSync::Endpoints::DescribeIdentityUsage.build(context)
          when :get_bulk_publish_details
            Aws::CognitoSync::Endpoints::GetBulkPublishDetails.build(context)
          when :get_cognito_events
            Aws::CognitoSync::Endpoints::GetCognitoEvents.build(context)
          when :get_identity_pool_configuration
            Aws::CognitoSync::Endpoints::GetIdentityPoolConfiguration.build(context)
          when :list_datasets
            Aws::CognitoSync::Endpoints::ListDatasets.build(context)
          when :list_identity_pool_usage
            Aws::CognitoSync::Endpoints::ListIdentityPoolUsage.build(context)
          when :list_records
            Aws::CognitoSync::Endpoints::ListRecords.build(context)
          when :register_device
            Aws::CognitoSync::Endpoints::RegisterDevice.build(context)
          when :set_cognito_events
            Aws::CognitoSync::Endpoints::SetCognitoEvents.build(context)
          when :set_identity_pool_configuration
            Aws::CognitoSync::Endpoints::SetIdentityPoolConfiguration.build(context)
          when :subscribe_to_dataset
            Aws::CognitoSync::Endpoints::SubscribeToDataset.build(context)
          when :unsubscribe_from_dataset
            Aws::CognitoSync::Endpoints::UnsubscribeFromDataset.build(context)
          when :update_records
            Aws::CognitoSync::Endpoints::UpdateRecords.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
