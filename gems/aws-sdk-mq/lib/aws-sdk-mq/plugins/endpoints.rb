# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MQ
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MQ::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MQ::EndpointParameters`'
      ) do |cfg|
        Aws::MQ::EndpointProvider.new
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
          when :create_broker
            Aws::MQ::Endpoints::CreateBroker.build(context)
          when :create_configuration
            Aws::MQ::Endpoints::CreateConfiguration.build(context)
          when :create_tags
            Aws::MQ::Endpoints::CreateTags.build(context)
          when :create_user
            Aws::MQ::Endpoints::CreateUser.build(context)
          when :delete_broker
            Aws::MQ::Endpoints::DeleteBroker.build(context)
          when :delete_tags
            Aws::MQ::Endpoints::DeleteTags.build(context)
          when :delete_user
            Aws::MQ::Endpoints::DeleteUser.build(context)
          when :describe_broker
            Aws::MQ::Endpoints::DescribeBroker.build(context)
          when :describe_broker_engine_types
            Aws::MQ::Endpoints::DescribeBrokerEngineTypes.build(context)
          when :describe_broker_instance_options
            Aws::MQ::Endpoints::DescribeBrokerInstanceOptions.build(context)
          when :describe_configuration
            Aws::MQ::Endpoints::DescribeConfiguration.build(context)
          when :describe_configuration_revision
            Aws::MQ::Endpoints::DescribeConfigurationRevision.build(context)
          when :describe_user
            Aws::MQ::Endpoints::DescribeUser.build(context)
          when :list_brokers
            Aws::MQ::Endpoints::ListBrokers.build(context)
          when :list_configuration_revisions
            Aws::MQ::Endpoints::ListConfigurationRevisions.build(context)
          when :list_configurations
            Aws::MQ::Endpoints::ListConfigurations.build(context)
          when :list_tags
            Aws::MQ::Endpoints::ListTags.build(context)
          when :list_users
            Aws::MQ::Endpoints::ListUsers.build(context)
          when :promote
            Aws::MQ::Endpoints::Promote.build(context)
          when :reboot_broker
            Aws::MQ::Endpoints::RebootBroker.build(context)
          when :update_broker
            Aws::MQ::Endpoints::UpdateBroker.build(context)
          when :update_configuration
            Aws::MQ::Endpoints::UpdateConfiguration.build(context)
          when :update_user
            Aws::MQ::Endpoints::UpdateUser.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
