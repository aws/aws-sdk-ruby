module Aws
  module Plugins
    class RequestSigner < Seahorse::Client::Plugin

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
          if signer = SIGNERS[context.config.signature_version]
            signer.sign(context)
          end
          @handler.call(context)
        end

      end

      handler(Handler, step: :sign)

    end
  end
end
