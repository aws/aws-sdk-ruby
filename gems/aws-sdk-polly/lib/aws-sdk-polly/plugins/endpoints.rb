# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Polly
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Polly::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Polly::EndpointParameters`'
      ) do |cfg|
        Aws::Polly::EndpointProvider.new
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
          when :delete_lexicon
            Aws::Polly::Endpoints::DeleteLexicon.build(context)
          when :describe_voices
            Aws::Polly::Endpoints::DescribeVoices.build(context)
          when :get_lexicon
            Aws::Polly::Endpoints::GetLexicon.build(context)
          when :get_speech_synthesis_task
            Aws::Polly::Endpoints::GetSpeechSynthesisTask.build(context)
          when :list_lexicons
            Aws::Polly::Endpoints::ListLexicons.build(context)
          when :list_speech_synthesis_tasks
            Aws::Polly::Endpoints::ListSpeechSynthesisTasks.build(context)
          when :put_lexicon
            Aws::Polly::Endpoints::PutLexicon.build(context)
          when :start_speech_synthesis_task
            Aws::Polly::Endpoints::StartSpeechSynthesisTask.build(context)
          when :synthesize_speech
            Aws::Polly::Endpoints::SynthesizeSpeech.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
