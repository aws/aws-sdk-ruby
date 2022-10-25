# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Braket
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Braket::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Braket::EndpointParameters`'
      ) do |cfg|
        Aws::Braket::EndpointProvider.new
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
            Aws::Braket::Endpoints::CancelJob.build(context)
          when :cancel_quantum_task
            Aws::Braket::Endpoints::CancelQuantumTask.build(context)
          when :create_job
            Aws::Braket::Endpoints::CreateJob.build(context)
          when :create_quantum_task
            Aws::Braket::Endpoints::CreateQuantumTask.build(context)
          when :get_device
            Aws::Braket::Endpoints::GetDevice.build(context)
          when :get_job
            Aws::Braket::Endpoints::GetJob.build(context)
          when :get_quantum_task
            Aws::Braket::Endpoints::GetQuantumTask.build(context)
          when :list_tags_for_resource
            Aws::Braket::Endpoints::ListTagsForResource.build(context)
          when :search_devices
            Aws::Braket::Endpoints::SearchDevices.build(context)
          when :search_jobs
            Aws::Braket::Endpoints::SearchJobs.build(context)
          when :search_quantum_tasks
            Aws::Braket::Endpoints::SearchQuantumTasks.build(context)
          when :tag_resource
            Aws::Braket::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Braket::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
