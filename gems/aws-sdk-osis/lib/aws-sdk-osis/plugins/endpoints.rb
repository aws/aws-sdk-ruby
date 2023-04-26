# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OSIS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::OSIS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::OSIS::EndpointParameters`'
      ) do |cfg|
        Aws::OSIS::EndpointProvider.new
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
          when :create_pipeline
            Aws::OSIS::Endpoints::CreatePipeline.build(context)
          when :delete_pipeline
            Aws::OSIS::Endpoints::DeletePipeline.build(context)
          when :get_pipeline
            Aws::OSIS::Endpoints::GetPipeline.build(context)
          when :get_pipeline_blueprint
            Aws::OSIS::Endpoints::GetPipelineBlueprint.build(context)
          when :get_pipeline_change_progress
            Aws::OSIS::Endpoints::GetPipelineChangeProgress.build(context)
          when :list_pipeline_blueprints
            Aws::OSIS::Endpoints::ListPipelineBlueprints.build(context)
          when :list_pipelines
            Aws::OSIS::Endpoints::ListPipelines.build(context)
          when :list_tags_for_resource
            Aws::OSIS::Endpoints::ListTagsForResource.build(context)
          when :start_pipeline
            Aws::OSIS::Endpoints::StartPipeline.build(context)
          when :stop_pipeline
            Aws::OSIS::Endpoints::StopPipeline.build(context)
          when :tag_resource
            Aws::OSIS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::OSIS::Endpoints::UntagResource.build(context)
          when :update_pipeline
            Aws::OSIS::Endpoints::UpdatePipeline.build(context)
          when :validate_pipeline
            Aws::OSIS::Endpoints::ValidatePipeline.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
