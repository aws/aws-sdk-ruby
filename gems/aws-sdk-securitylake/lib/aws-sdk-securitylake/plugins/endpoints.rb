# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SecurityLake
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SecurityLake::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SecurityLake::EndpointParameters`'
      ) do |cfg|
        Aws::SecurityLake::EndpointProvider.new
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
          when :create_aws_log_source
            Aws::SecurityLake::Endpoints::CreateAwsLogSource.build(context)
          when :create_custom_log_source
            Aws::SecurityLake::Endpoints::CreateCustomLogSource.build(context)
          when :create_data_lake
            Aws::SecurityLake::Endpoints::CreateDataLake.build(context)
          when :create_data_lake_exception_subscription
            Aws::SecurityLake::Endpoints::CreateDataLakeExceptionSubscription.build(context)
          when :create_data_lake_organization_configuration
            Aws::SecurityLake::Endpoints::CreateDataLakeOrganizationConfiguration.build(context)
          when :create_subscriber
            Aws::SecurityLake::Endpoints::CreateSubscriber.build(context)
          when :create_subscriber_notification
            Aws::SecurityLake::Endpoints::CreateSubscriberNotification.build(context)
          when :delete_aws_log_source
            Aws::SecurityLake::Endpoints::DeleteAwsLogSource.build(context)
          when :delete_custom_log_source
            Aws::SecurityLake::Endpoints::DeleteCustomLogSource.build(context)
          when :delete_data_lake
            Aws::SecurityLake::Endpoints::DeleteDataLake.build(context)
          when :delete_data_lake_exception_subscription
            Aws::SecurityLake::Endpoints::DeleteDataLakeExceptionSubscription.build(context)
          when :delete_data_lake_organization_configuration
            Aws::SecurityLake::Endpoints::DeleteDataLakeOrganizationConfiguration.build(context)
          when :delete_subscriber
            Aws::SecurityLake::Endpoints::DeleteSubscriber.build(context)
          when :delete_subscriber_notification
            Aws::SecurityLake::Endpoints::DeleteSubscriberNotification.build(context)
          when :deregister_data_lake_delegated_administrator
            Aws::SecurityLake::Endpoints::DeregisterDataLakeDelegatedAdministrator.build(context)
          when :get_data_lake_exception_subscription
            Aws::SecurityLake::Endpoints::GetDataLakeExceptionSubscription.build(context)
          when :get_data_lake_organization_configuration
            Aws::SecurityLake::Endpoints::GetDataLakeOrganizationConfiguration.build(context)
          when :get_data_lake_sources
            Aws::SecurityLake::Endpoints::GetDataLakeSources.build(context)
          when :get_subscriber
            Aws::SecurityLake::Endpoints::GetSubscriber.build(context)
          when :list_data_lake_exceptions
            Aws::SecurityLake::Endpoints::ListDataLakeExceptions.build(context)
          when :list_data_lakes
            Aws::SecurityLake::Endpoints::ListDataLakes.build(context)
          when :list_log_sources
            Aws::SecurityLake::Endpoints::ListLogSources.build(context)
          when :list_subscribers
            Aws::SecurityLake::Endpoints::ListSubscribers.build(context)
          when :register_data_lake_delegated_administrator
            Aws::SecurityLake::Endpoints::RegisterDataLakeDelegatedAdministrator.build(context)
          when :update_data_lake
            Aws::SecurityLake::Endpoints::UpdateDataLake.build(context)
          when :update_data_lake_exception_subscription
            Aws::SecurityLake::Endpoints::UpdateDataLakeExceptionSubscription.build(context)
          when :update_subscriber
            Aws::SecurityLake::Endpoints::UpdateSubscriber.build(context)
          when :update_subscriber_notification
            Aws::SecurityLake::Endpoints::UpdateSubscriberNotification.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
