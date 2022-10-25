# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Batch
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Batch::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Batch::EndpointParameters`'
      ) do |cfg|
        Aws::Batch::EndpointProvider.new
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
          when :cancel_job
            Aws::Batch::Endpoints::CancelJob.build(context)
          when :create_compute_environment
            Aws::Batch::Endpoints::CreateComputeEnvironment.build(context)
          when :create_job_queue
            Aws::Batch::Endpoints::CreateJobQueue.build(context)
          when :create_scheduling_policy
            Aws::Batch::Endpoints::CreateSchedulingPolicy.build(context)
          when :delete_compute_environment
            Aws::Batch::Endpoints::DeleteComputeEnvironment.build(context)
          when :delete_job_queue
            Aws::Batch::Endpoints::DeleteJobQueue.build(context)
          when :delete_scheduling_policy
            Aws::Batch::Endpoints::DeleteSchedulingPolicy.build(context)
          when :deregister_job_definition
            Aws::Batch::Endpoints::DeregisterJobDefinition.build(context)
          when :describe_compute_environments
            Aws::Batch::Endpoints::DescribeComputeEnvironments.build(context)
          when :describe_job_definitions
            Aws::Batch::Endpoints::DescribeJobDefinitions.build(context)
          when :describe_job_queues
            Aws::Batch::Endpoints::DescribeJobQueues.build(context)
          when :describe_jobs
            Aws::Batch::Endpoints::DescribeJobs.build(context)
          when :describe_scheduling_policies
            Aws::Batch::Endpoints::DescribeSchedulingPolicies.build(context)
          when :list_jobs
            Aws::Batch::Endpoints::ListJobs.build(context)
          when :list_scheduling_policies
            Aws::Batch::Endpoints::ListSchedulingPolicies.build(context)
          when :list_tags_for_resource
            Aws::Batch::Endpoints::ListTagsForResource.build(context)
          when :register_job_definition
            Aws::Batch::Endpoints::RegisterJobDefinition.build(context)
          when :submit_job
            Aws::Batch::Endpoints::SubmitJob.build(context)
          when :tag_resource
            Aws::Batch::Endpoints::TagResource.build(context)
          when :terminate_job
            Aws::Batch::Endpoints::TerminateJob.build(context)
          when :untag_resource
            Aws::Batch::Endpoints::UntagResource.build(context)
          when :update_compute_environment
            Aws::Batch::Endpoints::UpdateComputeEnvironment.build(context)
          when :update_job_queue
            Aws::Batch::Endpoints::UpdateJobQueue.build(context)
          when :update_scheduling_policy
            Aws::Batch::Endpoints::UpdateSchedulingPolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
