# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticTranscoder
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticTranscoder::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElasticTranscoder::EndpointParameters`'
      ) do |cfg|
        Aws::ElasticTranscoder::EndpointProvider.new
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
            Aws::ElasticTranscoder::Endpoints::CancelJob.build(context)
          when :create_job
            Aws::ElasticTranscoder::Endpoints::CreateJob.build(context)
          when :create_pipeline
            Aws::ElasticTranscoder::Endpoints::CreatePipeline.build(context)
          when :create_preset
            Aws::ElasticTranscoder::Endpoints::CreatePreset.build(context)
          when :delete_pipeline
            Aws::ElasticTranscoder::Endpoints::DeletePipeline.build(context)
          when :delete_preset
            Aws::ElasticTranscoder::Endpoints::DeletePreset.build(context)
          when :list_jobs_by_pipeline
            Aws::ElasticTranscoder::Endpoints::ListJobsByPipeline.build(context)
          when :list_jobs_by_status
            Aws::ElasticTranscoder::Endpoints::ListJobsByStatus.build(context)
          when :list_pipelines
            Aws::ElasticTranscoder::Endpoints::ListPipelines.build(context)
          when :list_presets
            Aws::ElasticTranscoder::Endpoints::ListPresets.build(context)
          when :read_job
            Aws::ElasticTranscoder::Endpoints::ReadJob.build(context)
          when :read_pipeline
            Aws::ElasticTranscoder::Endpoints::ReadPipeline.build(context)
          when :read_preset
            Aws::ElasticTranscoder::Endpoints::ReadPreset.build(context)
          when :test_role
            Aws::ElasticTranscoder::Endpoints::TestRole.build(context)
          when :update_pipeline
            Aws::ElasticTranscoder::Endpoints::UpdatePipeline.build(context)
          when :update_pipeline_notifications
            Aws::ElasticTranscoder::Endpoints::UpdatePipelineNotifications.build(context)
          when :update_pipeline_status
            Aws::ElasticTranscoder::Endpoints::UpdatePipelineStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
