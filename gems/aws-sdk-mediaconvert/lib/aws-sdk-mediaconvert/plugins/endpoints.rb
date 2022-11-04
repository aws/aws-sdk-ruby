# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaConvert
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaConvert::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaConvert::EndpointParameters`'
      ) do |cfg|
        Aws::MediaConvert::EndpointProvider.new
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
          when :associate_certificate
            Aws::MediaConvert::Endpoints::AssociateCertificate.build(context)
          when :cancel_job
            Aws::MediaConvert::Endpoints::CancelJob.build(context)
          when :create_job
            Aws::MediaConvert::Endpoints::CreateJob.build(context)
          when :create_job_template
            Aws::MediaConvert::Endpoints::CreateJobTemplate.build(context)
          when :create_preset
            Aws::MediaConvert::Endpoints::CreatePreset.build(context)
          when :create_queue
            Aws::MediaConvert::Endpoints::CreateQueue.build(context)
          when :delete_job_template
            Aws::MediaConvert::Endpoints::DeleteJobTemplate.build(context)
          when :delete_policy
            Aws::MediaConvert::Endpoints::DeletePolicy.build(context)
          when :delete_preset
            Aws::MediaConvert::Endpoints::DeletePreset.build(context)
          when :delete_queue
            Aws::MediaConvert::Endpoints::DeleteQueue.build(context)
          when :describe_endpoints
            Aws::MediaConvert::Endpoints::DescribeEndpoints.build(context)
          when :disassociate_certificate
            Aws::MediaConvert::Endpoints::DisassociateCertificate.build(context)
          when :get_job
            Aws::MediaConvert::Endpoints::GetJob.build(context)
          when :get_job_template
            Aws::MediaConvert::Endpoints::GetJobTemplate.build(context)
          when :get_policy
            Aws::MediaConvert::Endpoints::GetPolicy.build(context)
          when :get_preset
            Aws::MediaConvert::Endpoints::GetPreset.build(context)
          when :get_queue
            Aws::MediaConvert::Endpoints::GetQueue.build(context)
          when :list_job_templates
            Aws::MediaConvert::Endpoints::ListJobTemplates.build(context)
          when :list_jobs
            Aws::MediaConvert::Endpoints::ListJobs.build(context)
          when :list_presets
            Aws::MediaConvert::Endpoints::ListPresets.build(context)
          when :list_queues
            Aws::MediaConvert::Endpoints::ListQueues.build(context)
          when :list_tags_for_resource
            Aws::MediaConvert::Endpoints::ListTagsForResource.build(context)
          when :put_policy
            Aws::MediaConvert::Endpoints::PutPolicy.build(context)
          when :tag_resource
            Aws::MediaConvert::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaConvert::Endpoints::UntagResource.build(context)
          when :update_job_template
            Aws::MediaConvert::Endpoints::UpdateJobTemplate.build(context)
          when :update_preset
            Aws::MediaConvert::Endpoints::UpdatePreset.build(context)
          when :update_queue
            Aws::MediaConvert::Endpoints::UpdateQueue.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
