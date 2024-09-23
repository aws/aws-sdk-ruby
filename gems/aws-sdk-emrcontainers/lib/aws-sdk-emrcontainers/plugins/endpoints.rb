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
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::EMRContainers::EndpointParameters`.
        DOCS
        Aws::EMRContainers::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :create_security_configuration
            Aws::EMRContainers::Endpoints::CreateSecurityConfiguration.build(context)
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
          when :describe_security_configuration
            Aws::EMRContainers::Endpoints::DescribeSecurityConfiguration.build(context)
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
          when :list_security_configurations
            Aws::EMRContainers::Endpoints::ListSecurityConfigurations.build(context)
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
