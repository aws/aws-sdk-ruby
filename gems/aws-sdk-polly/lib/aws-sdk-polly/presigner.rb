# frozen_string_literal: true

module Aws
  module Polly
    # Allows you to create presigned URLs for Polly operations.
    #
    # @example
    #
    #   presigner = Aws::Polly::Presigner.new
    #   url = presigner.synthesize_speech(
    #     output_format: 'mp3',
    #     text: 'Hello World',
    #     voice_id: 'Ewa'
    #   )
    #
    class Presigner
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Aws::Polly::Client.new
      end

      # Returns a presigned url for synthesize_speech.
      #
      # @option params (see Client#synthesize_speech)
      def synthesize_speech(params = {}) # rubocop:disable Metrics/AbcSize
        req = @client.build_request(:synthesize_speech, params)
        context = req.context

        input = context.operation.input
        Smithy::Client::ParamValidator.new(input).validate!(params)
        parts = []
        input.shape.members.each do |name, ref|
          parts << [ref, params[name]] unless params[name].nil?
        end
        query = Aws::Core::Rest::Request::QuerystringBuilder.new.build(parts)

        endpoint_params = Aws::Polly::EndpointParameters.create(context)
        endpoint = context.config.endpoint_provider.resolve(endpoint_params)
        auth = Smithy::Client::Auth.resolve(context, endpoint.properties)

        auth.signer.presign_url(
          http_method: 'GET',
          url: "#{endpoint.url}/v1/speech?#{query}",
          body: '',
          expires_in: 900
        ).url
      end
    end
  end
end
