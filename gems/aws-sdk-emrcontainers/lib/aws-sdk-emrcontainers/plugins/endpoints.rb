# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EMRContainers
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EMRContainers::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EMRContainers::EndpointParameters`'
      ) do |cfg|
        Aws::EMRContainers::EndpointProvider.new
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
          when :cancel_job_run
            Aws::EMRContainers::Endpoints::CancelJobRun.build(context)
          when :create_job_template
            Aws::EMRContainers::Endpoints::CreateJobTemplate.build(context)
          when :create_managed_endpoint
            Aws::EMRContainers::Endpoints::CreateManagedEndpoint.build(context)
          when :create_virtual_cluster
            Aws::EMRContainers::Endpoints::CreateVirtualCluster.build(context)
          when :delete_job_template
            Aws::EMRContainers::Endpoints::DeleteJobTemplate.build(context)
          when :delete_managed_endpoint
            Aws::EMRContainers::Endpoints::DeleteManagedEndpoint.build(context)
          when :delete_virtual_cluster
            Aws::EMRContainers::Endpoints::DeleteVirtualCluster.build(context)
          when :describe_job_run
            Aws::EMRContainers::Endpoints::DescribeJobRun.build(context)
          when :describe_job_template
            Aws::EMRContainers::Endpoints::DescribeJobTemplate.build(context)
          when :describe_managed_endpoint
            Aws::EMRContainers::Endpoints::DescribeManagedEndpoint.build(context)
          when :describe_virtual_cluster
            Aws::EMRContainers::Endpoints::DescribeVirtualCluster.build(context)
          when :get_managed_endpoint_session_credentials
            Aws::EMRContainers::Endpoints::GetManagedEndpointSessionCredentials.build(context)
          when :list_job_runs
            Aws::EMRContainers::Endpoints::ListJobRuns.build(context)
          when :list_job_templates
            Aws::EMRContainers::Endpoints::ListJobTemplates.build(context)
          when :list_managed_endpoints
            Aws::EMRContainers::Endpoints::ListManagedEndpoints.build(context)
          when :list_tags_for_resource
            Aws::EMRContainers::Endpoints::ListTagsForResource.build(context)
          when :list_virtual_clusters
            Aws::EMRContainers::Endpoints::ListVirtualClusters.build(context)
          when :start_job_run
            Aws::EMRContainers::Endpoints::StartJobRun.build(context)
          when :tag_resource
            Aws::EMRContainers::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::EMRContainers::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
