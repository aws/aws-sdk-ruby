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
          when :create_datalake
            Aws::SecurityLake::Endpoints::CreateDatalake.build(context)
          when :create_datalake_auto_enable
            Aws::SecurityLake::Endpoints::CreateDatalakeAutoEnable.build(context)
          when :create_datalake_delegated_admin
            Aws::SecurityLake::Endpoints::CreateDatalakeDelegatedAdmin.build(context)
          when :create_datalake_exceptions_subscription
            Aws::SecurityLake::Endpoints::CreateDatalakeExceptionsSubscription.build(context)
          when :create_subscriber
            Aws::SecurityLake::Endpoints::CreateSubscriber.build(context)
          when :create_subscription_notification_configuration
            Aws::SecurityLake::Endpoints::CreateSubscriptionNotificationConfiguration.build(context)
          when :delete_aws_log_source
            Aws::SecurityLake::Endpoints::DeleteAwsLogSource.build(context)
          when :delete_custom_log_source
            Aws::SecurityLake::Endpoints::DeleteCustomLogSource.build(context)
          when :delete_datalake
            Aws::SecurityLake::Endpoints::DeleteDatalake.build(context)
          when :delete_datalake_auto_enable
            Aws::SecurityLake::Endpoints::DeleteDatalakeAutoEnable.build(context)
          when :delete_datalake_delegated_admin
            Aws::SecurityLake::Endpoints::DeleteDatalakeDelegatedAdmin.build(context)
          when :delete_datalake_exceptions_subscription
            Aws::SecurityLake::Endpoints::DeleteDatalakeExceptionsSubscription.build(context)
          when :delete_subscriber
            Aws::SecurityLake::Endpoints::DeleteSubscriber.build(context)
          when :delete_subscription_notification_configuration
            Aws::SecurityLake::Endpoints::DeleteSubscriptionNotificationConfiguration.build(context)
          when :get_datalake
            Aws::SecurityLake::Endpoints::GetDatalake.build(context)
          when :get_datalake_auto_enable
            Aws::SecurityLake::Endpoints::GetDatalakeAutoEnable.build(context)
          when :get_datalake_exceptions_expiry
            Aws::SecurityLake::Endpoints::GetDatalakeExceptionsExpiry.build(context)
          when :get_datalake_exceptions_subscription
            Aws::SecurityLake::Endpoints::GetDatalakeExceptionsSubscription.build(context)
          when :get_datalake_status
            Aws::SecurityLake::Endpoints::GetDatalakeStatus.build(context)
          when :get_subscriber
            Aws::SecurityLake::Endpoints::GetSubscriber.build(context)
          when :list_datalake_exceptions
            Aws::SecurityLake::Endpoints::ListDatalakeExceptions.build(context)
          when :list_log_sources
            Aws::SecurityLake::Endpoints::ListLogSources.build(context)
          when :list_subscribers
            Aws::SecurityLake::Endpoints::ListSubscribers.build(context)
          when :update_datalake
            Aws::SecurityLake::Endpoints::UpdateDatalake.build(context)
          when :update_datalake_exceptions_expiry
            Aws::SecurityLake::Endpoints::UpdateDatalakeExceptionsExpiry.build(context)
          when :update_datalake_exceptions_subscription
            Aws::SecurityLake::Endpoints::UpdateDatalakeExceptionsSubscription.build(context)
          when :update_subscriber
            Aws::SecurityLake::Endpoints::UpdateSubscriber.build(context)
          when :update_subscription_notification_configuration
            Aws::SecurityLake::Endpoints::UpdateSubscriptionNotificationConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
