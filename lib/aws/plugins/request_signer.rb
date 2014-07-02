module Aws
  module Plugins

    # @seahorse.client.option [required, Credentials] :credentials Your
    #   AWS credentials.  The following locations will be searched in order
    #   for credentials:
    #
    #   * `:access_key_id`, `:secret_access_key`, and `:session_token` options
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `HOME/.aws/credentials` shared credentials file
    #   * EC2 instance profile credentials
    #
    # @seahorse.client.option [String] :profile Used when loading credentials
    #   from the shared credentials file at HOME/.aws/credentials.  When not
    #   specified, 'default' is used.
    #
    # @seahorse.client.option [String] :access_key_id Used to set credentials
    #   statically.
    #
    # @seahorse.client.option [String] :secret_access_key_id Used to set
    #   credentials statically.
    #
    # @seahorse.client.option [String] :session_token Used to set credentials
    #   statically.
    #
    class RequestSigner < Seahorse::Client::Plugin

      option(:access_key_id)

      option(:secret_access_key)

      option(:session_token)

      option(:profile)

      option(:credentials) do |config|
        CredentialProviderChain.new(config).resolve
      end

      # Intentionally not documented - this should go away when all
      # services support signature version 4 in every region.
      option(:signature_version) do |cfg|
        if cfg.region.match(/^cn-/)
          'v4'
        else
          cfg.api.metadata('signatureVersion')
        end
      end

      option(:sigv4_name) do |cfg|
        cfg.api.metadata('signingName') || cfg.api.metadata('endpointPrefix')
      end

      option(:sigv4_region) do |cfg|
        prefix = cfg.api.metadata('endpointPrefix')
        if matches = cfg.endpoint.match(/#{prefix}[.-](.+)\.amazonaws\.com/)
          matches[1]
        elsif cfg.endpoint.match(/#{prefix}\.amazonaws\.com/)
          'us-east-1'
        else
          cfg.region
        end
      end

      class Handler < Seahorse::Client::Handler

        SIGNERS = {
          'v4'      => Signers::V4,
          'v3https' => Signers::V3,
          'v2'      => Signers::V2,
          's3'      => Signers::S3,
        }

        def call(context)
          sign_authenticated_requests(context)
          @handler.call(context)
        end

        def sign_authenticated_requests(context)
          if signer = SIGNERS[context.config.signature_version]
            signer.sign(context)
          end
        end

      end

      handler(Handler, step: :sign)

      def after_initialize(client)
        if client.config.credentials.nil? or !client.config.credentials.set?
          raise Errors::MissingCredentialsError
        end
      end

    end
  end
end
