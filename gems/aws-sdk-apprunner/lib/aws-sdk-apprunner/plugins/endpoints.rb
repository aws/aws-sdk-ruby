# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppRunner
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppRunner::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppRunner::EndpointParameters`'
      ) do |cfg|
        Aws::AppRunner::EndpointProvider.new
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
          when :associate_custom_domain
            Aws::AppRunner::Endpoints::AssociateCustomDomain.build(context)
          when :create_auto_scaling_configuration
            Aws::AppRunner::Endpoints::CreateAutoScalingConfiguration.build(context)
          when :create_connection
            Aws::AppRunner::Endpoints::CreateConnection.build(context)
          when :create_observability_configuration
            Aws::AppRunner::Endpoints::CreateObservabilityConfiguration.build(context)
          when :create_service
            Aws::AppRunner::Endpoints::CreateService.build(context)
          when :create_vpc_connector
            Aws::AppRunner::Endpoints::CreateVpcConnector.build(context)
          when :create_vpc_ingress_connection
            Aws::AppRunner::Endpoints::CreateVpcIngressConnection.build(context)
          when :delete_auto_scaling_configuration
            Aws::AppRunner::Endpoints::DeleteAutoScalingConfiguration.build(context)
          when :delete_connection
            Aws::AppRunner::Endpoints::DeleteConnection.build(context)
          when :delete_observability_configuration
            Aws::AppRunner::Endpoints::DeleteObservabilityConfiguration.build(context)
          when :delete_service
            Aws::AppRunner::Endpoints::DeleteService.build(context)
          when :delete_vpc_connector
            Aws::AppRunner::Endpoints::DeleteVpcConnector.build(context)
          when :delete_vpc_ingress_connection
            Aws::AppRunner::Endpoints::DeleteVpcIngressConnection.build(context)
          when :describe_auto_scaling_configuration
            Aws::AppRunner::Endpoints::DescribeAutoScalingConfiguration.build(context)
          when :describe_custom_domains
            Aws::AppRunner::Endpoints::DescribeCustomDomains.build(context)
          when :describe_observability_configuration
            Aws::AppRunner::Endpoints::DescribeObservabilityConfiguration.build(context)
          when :describe_service
            Aws::AppRunner::Endpoints::DescribeService.build(context)
          when :describe_vpc_connector
            Aws::AppRunner::Endpoints::DescribeVpcConnector.build(context)
          when :describe_vpc_ingress_connection
            Aws::AppRunner::Endpoints::DescribeVpcIngressConnection.build(context)
          when :disassociate_custom_domain
            Aws::AppRunner::Endpoints::DisassociateCustomDomain.build(context)
          when :list_auto_scaling_configurations
            Aws::AppRunner::Endpoints::ListAutoScalingConfigurations.build(context)
          when :list_connections
            Aws::AppRunner::Endpoints::ListConnections.build(context)
          when :list_observability_configurations
            Aws::AppRunner::Endpoints::ListObservabilityConfigurations.build(context)
          when :list_operations
            Aws::AppRunner::Endpoints::ListOperations.build(context)
          when :list_services
            Aws::AppRunner::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::AppRunner::Endpoints::ListTagsForResource.build(context)
          when :list_vpc_connectors
            Aws::AppRunner::Endpoints::ListVpcConnectors.build(context)
          when :list_vpc_ingress_connections
            Aws::AppRunner::Endpoints::ListVpcIngressConnections.build(context)
          when :pause_service
            Aws::AppRunner::Endpoints::PauseService.build(context)
          when :resume_service
            Aws::AppRunner::Endpoints::ResumeService.build(context)
          when :start_deployment
            Aws::AppRunner::Endpoints::StartDeployment.build(context)
          when :tag_resource
            Aws::AppRunner::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppRunner::Endpoints::UntagResource.build(context)
          when :update_service
            Aws::AppRunner::Endpoints::UpdateService.build(context)
          when :update_vpc_ingress_connection
            Aws::AppRunner::Endpoints::UpdateVpcIngressConnection.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
