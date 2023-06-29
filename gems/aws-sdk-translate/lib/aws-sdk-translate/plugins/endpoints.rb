# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Translate
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Translate::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Translate::EndpointParameters`'
      ) do |cfg|
        Aws::Translate::EndpointProvider.new
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
          when :create_parallel_data
            Aws::Translate::Endpoints::CreateParallelData.build(context)
          when :delete_parallel_data
            Aws::Translate::Endpoints::DeleteParallelData.build(context)
          when :delete_terminology
            Aws::Translate::Endpoints::DeleteTerminology.build(context)
          when :describe_text_translation_job
            Aws::Translate::Endpoints::DescribeTextTranslationJob.build(context)
          when :get_parallel_data
            Aws::Translate::Endpoints::GetParallelData.build(context)
          when :get_terminology
            Aws::Translate::Endpoints::GetTerminology.build(context)
          when :import_terminology
            Aws::Translate::Endpoints::ImportTerminology.build(context)
          when :list_languages
            Aws::Translate::Endpoints::ListLanguages.build(context)
          when :list_parallel_data
            Aws::Translate::Endpoints::ListParallelData.build(context)
          when :list_tags_for_resource
            Aws::Translate::Endpoints::ListTagsForResource.build(context)
          when :list_terminologies
            Aws::Translate::Endpoints::ListTerminologies.build(context)
          when :list_text_translation_jobs
            Aws::Translate::Endpoints::ListTextTranslationJobs.build(context)
          when :start_text_translation_job
            Aws::Translate::Endpoints::StartTextTranslationJob.build(context)
          when :stop_text_translation_job
            Aws::Translate::Endpoints::StopTextTranslationJob.build(context)
          when :tag_resource
            Aws::Translate::Endpoints::TagResource.build(context)
          when :translate_document
            Aws::Translate::Endpoints::TranslateDocument.build(context)
          when :translate_text
            Aws::Translate::Endpoints::TranslateText.build(context)
          when :untag_resource
            Aws::Translate::Endpoints::UntagResource.build(context)
          when :update_parallel_data
            Aws::Translate::Endpoints::UpdateParallelData.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
