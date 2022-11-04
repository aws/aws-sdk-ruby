# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DAX
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DAX::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DAX::EndpointParameters`'
      ) do |cfg|
        Aws::DAX::EndpointProvider.new
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
          when :create_cluster
            Aws::DAX::Endpoints::CreateCluster.build(context)
          when :create_parameter_group
            Aws::DAX::Endpoints::CreateParameterGroup.build(context)
          when :create_subnet_group
            Aws::DAX::Endpoints::CreateSubnetGroup.build(context)
          when :decrease_replication_factor
            Aws::DAX::Endpoints::DecreaseReplicationFactor.build(context)
          when :delete_cluster
            Aws::DAX::Endpoints::DeleteCluster.build(context)
          when :delete_parameter_group
            Aws::DAX::Endpoints::DeleteParameterGroup.build(context)
          when :delete_subnet_group
            Aws::DAX::Endpoints::DeleteSubnetGroup.build(context)
          when :describe_clusters
            Aws::DAX::Endpoints::DescribeClusters.build(context)
          when :describe_default_parameters
            Aws::DAX::Endpoints::DescribeDefaultParameters.build(context)
          when :describe_events
            Aws::DAX::Endpoints::DescribeEvents.build(context)
          when :describe_parameter_groups
            Aws::DAX::Endpoints::DescribeParameterGroups.build(context)
          when :describe_parameters
            Aws::DAX::Endpoints::DescribeParameters.build(context)
          when :describe_subnet_groups
            Aws::DAX::Endpoints::DescribeSubnetGroups.build(context)
          when :increase_replication_factor
            Aws::DAX::Endpoints::IncreaseReplicationFactor.build(context)
          when :list_tags
            Aws::DAX::Endpoints::ListTags.build(context)
          when :reboot_node
            Aws::DAX::Endpoints::RebootNode.build(context)
          when :tag_resource
            Aws::DAX::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DAX::Endpoints::UntagResource.build(context)
          when :update_cluster
            Aws::DAX::Endpoints::UpdateCluster.build(context)
          when :update_parameter_group
            Aws::DAX::Endpoints::UpdateParameterGroup.build(context)
          when :update_subnet_group
            Aws::DAX::Endpoints::UpdateSubnetGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
