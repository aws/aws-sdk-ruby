# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Polly

    # Allows you to create presigned URLs for `synthesize_speech`
    #
    # Example Use:
    #
    #   signer = Aws::Polly::Presigner.new
    #   url = signer.synthesize_speech_presigned_url(
    #     output_format: 'mp3',
    #     text: 'Hello World',
    #     voice_id: 'Ewa'
    #   )
    #
    class Presigner

      # @option options [Client] :client Optionally provide an existing Polly
      #   client.
      #
      # @option options [Credentials] :credentials This option is deprecated,
      #   please use :client instead. Provide an object that responds to
      #   `#credentials` that returns another object that responds to
      #   `#access_key_id`, `#secret_access_key`, and `#session_token`.
      #
      #   For example, you could provide an instance of following classes:
      #     * `Aws::Credentials`
      #     * `Aws::SharedCredentials`
      #     * `Aws::InstanceProfileCredentials`
      #     * `Aws::AssumeRoleCredentials`
      #     * `Aws::ECSCredentials`
      #
      # @option options [String] :region This option is deprecated, please use
      #   :client instead. The region name, e.g. 'us-west-2'.
      #
      def initialize(options = {})
        if !(options.keys - [:credentials, :region, :client]).empty?
          raise ArgumentError,
                ':options may only contain :client, :region, :credentials '\
                'keys. Please use the :client option instead.'
        end
        @client = options[:client] || Aws::Polly::Client.new(options)
      end

      # @param [Hash] params Parameter inputs for {Client#synthesize_speech}
      #  operation.
      def synthesize_speech_presigned_url(params = {})
        req = @client.build_request(:synthesize_speech, params)

        parts = []
        req.context.operation.input.shape.members.each do |name, ref|
          parts << [ ref, params[name] ] unless params[name].nil?
        end
        query = Aws::Rest::Request::QuerystringBuilder.new.build(parts)

        signer = Aws::Sigv4::Signer.new(
          service: 'polly',
          region: req.context.config.region,
          credentials_provider: req.context.config.credentials
        )

        url = Aws::Partitions::EndpointProvider.resolve(
          signer.region, 'polly', 'regional',
          {
            dualstack: req.context.config.use_dualstack_endpoint,
            fips: req.context.config.use_fips_endpoint
          }
        )
        url += "/v1/speech?#{query}"
        pre_signed_url = signer.presign_url(
          http_method: 'GET',
          url: url,
          body: '',
          expires_in: 900
        ).to_s
      end
    end

  end
end
