# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GlobalAccelerator
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GlobalAccelerator::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GlobalAccelerator::EndpointParameters`'
      ) do |cfg|
        Aws::GlobalAccelerator::EndpointProvider.new
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
          when :add_custom_routing_endpoints
            Aws::GlobalAccelerator::Endpoints::AddCustomRoutingEndpoints.build(context)
          when :add_endpoints
            Aws::GlobalAccelerator::Endpoints::AddEndpoints.build(context)
          when :advertise_byoip_cidr
            Aws::GlobalAccelerator::Endpoints::AdvertiseByoipCidr.build(context)
          when :allow_custom_routing_traffic
            Aws::GlobalAccelerator::Endpoints::AllowCustomRoutingTraffic.build(context)
          when :create_accelerator
            Aws::GlobalAccelerator::Endpoints::CreateAccelerator.build(context)
          when :create_custom_routing_accelerator
            Aws::GlobalAccelerator::Endpoints::CreateCustomRoutingAccelerator.build(context)
          when :create_custom_routing_endpoint_group
            Aws::GlobalAccelerator::Endpoints::CreateCustomRoutingEndpointGroup.build(context)
          when :create_custom_routing_listener
            Aws::GlobalAccelerator::Endpoints::CreateCustomRoutingListener.build(context)
          when :create_endpoint_group
            Aws::GlobalAccelerator::Endpoints::CreateEndpointGroup.build(context)
          when :create_listener
            Aws::GlobalAccelerator::Endpoints::CreateListener.build(context)
          when :delete_accelerator
            Aws::GlobalAccelerator::Endpoints::DeleteAccelerator.build(context)
          when :delete_custom_routing_accelerator
            Aws::GlobalAccelerator::Endpoints::DeleteCustomRoutingAccelerator.build(context)
          when :delete_custom_routing_endpoint_group
            Aws::GlobalAccelerator::Endpoints::DeleteCustomRoutingEndpointGroup.build(context)
          when :delete_custom_routing_listener
            Aws::GlobalAccelerator::Endpoints::DeleteCustomRoutingListener.build(context)
          when :delete_endpoint_group
            Aws::GlobalAccelerator::Endpoints::DeleteEndpointGroup.build(context)
          when :delete_listener
            Aws::GlobalAccelerator::Endpoints::DeleteListener.build(context)
          when :deny_custom_routing_traffic
            Aws::GlobalAccelerator::Endpoints::DenyCustomRoutingTraffic.build(context)
          when :deprovision_byoip_cidr
            Aws::GlobalAccelerator::Endpoints::DeprovisionByoipCidr.build(context)
          when :describe_accelerator
            Aws::GlobalAccelerator::Endpoints::DescribeAccelerator.build(context)
          when :describe_accelerator_attributes
            Aws::GlobalAccelerator::Endpoints::DescribeAcceleratorAttributes.build(context)
          when :describe_custom_routing_accelerator
            Aws::GlobalAccelerator::Endpoints::DescribeCustomRoutingAccelerator.build(context)
          when :describe_custom_routing_accelerator_attributes
            Aws::GlobalAccelerator::Endpoints::DescribeCustomRoutingAcceleratorAttributes.build(context)
          when :describe_custom_routing_endpoint_group
            Aws::GlobalAccelerator::Endpoints::DescribeCustomRoutingEndpointGroup.build(context)
          when :describe_custom_routing_listener
            Aws::GlobalAccelerator::Endpoints::DescribeCustomRoutingListener.build(context)
          when :describe_endpoint_group
            Aws::GlobalAccelerator::Endpoints::DescribeEndpointGroup.build(context)
          when :describe_listener
            Aws::GlobalAccelerator::Endpoints::DescribeListener.build(context)
          when :list_accelerators
            Aws::GlobalAccelerator::Endpoints::ListAccelerators.build(context)
          when :list_byoip_cidrs
            Aws::GlobalAccelerator::Endpoints::ListByoipCidrs.build(context)
          when :list_custom_routing_accelerators
            Aws::GlobalAccelerator::Endpoints::ListCustomRoutingAccelerators.build(context)
          when :list_custom_routing_endpoint_groups
            Aws::GlobalAccelerator::Endpoints::ListCustomRoutingEndpointGroups.build(context)
          when :list_custom_routing_listeners
            Aws::GlobalAccelerator::Endpoints::ListCustomRoutingListeners.build(context)
          when :list_custom_routing_port_mappings
            Aws::GlobalAccelerator::Endpoints::ListCustomRoutingPortMappings.build(context)
          when :list_custom_routing_port_mappings_by_destination
            Aws::GlobalAccelerator::Endpoints::ListCustomRoutingPortMappingsByDestination.build(context)
          when :list_endpoint_groups
            Aws::GlobalAccelerator::Endpoints::ListEndpointGroups.build(context)
          when :list_listeners
            Aws::GlobalAccelerator::Endpoints::ListListeners.build(context)
          when :list_tags_for_resource
            Aws::GlobalAccelerator::Endpoints::ListTagsForResource.build(context)
          when :provision_byoip_cidr
            Aws::GlobalAccelerator::Endpoints::ProvisionByoipCidr.build(context)
          when :remove_custom_routing_endpoints
            Aws::GlobalAccelerator::Endpoints::RemoveCustomRoutingEndpoints.build(context)
          when :remove_endpoints
            Aws::GlobalAccelerator::Endpoints::RemoveEndpoints.build(context)
          when :tag_resource
            Aws::GlobalAccelerator::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::GlobalAccelerator::Endpoints::UntagResource.build(context)
          when :update_accelerator
            Aws::GlobalAccelerator::Endpoints::UpdateAccelerator.build(context)
          when :update_accelerator_attributes
            Aws::GlobalAccelerator::Endpoints::UpdateAcceleratorAttributes.build(context)
          when :update_custom_routing_accelerator
            Aws::GlobalAccelerator::Endpoints::UpdateCustomRoutingAccelerator.build(context)
          when :update_custom_routing_accelerator_attributes
            Aws::GlobalAccelerator::Endpoints::UpdateCustomRoutingAcceleratorAttributes.build(context)
          when :update_custom_routing_listener
            Aws::GlobalAccelerator::Endpoints::UpdateCustomRoutingListener.build(context)
          when :update_endpoint_group
            Aws::GlobalAccelerator::Endpoints::UpdateEndpointGroup.build(context)
          when :update_listener
            Aws::GlobalAccelerator::Endpoints::UpdateListener.build(context)
          when :withdraw_byoip_cidr
            Aws::GlobalAccelerator::Endpoints::WithdrawByoipCidr.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
