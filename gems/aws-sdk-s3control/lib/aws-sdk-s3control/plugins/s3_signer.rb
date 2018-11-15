require 'aws-sigv4'

module Aws
  module S3Control
    module Plugins
      # This plugin is an implementation detail and may be modified.
      # @api private
      class S3Signer < Seahorse::Client::Plugin

        option(:sigv4_signer) do |cfg|
          S3Signer.build_v4_signer(
            region: cfg.sigv4_region,
            credentials: cfg.credentials
          )
        end

        option(:sigv4_region) do |cfg|
          Aws::Partitions::EndpointProvider.signing_region(cfg.region, 's3')
        end

        def add_handlers(handlers, cfg)
          handlers.add(V4Handler, step: :sign)
        end

        class V4Handler < Seahorse::Client::Handler

          def call(context)
            Aws::Plugins::SignatureV4.apply_signature(
              context: context,
              signer: sigv4_signer(context)
            )
            @handler.call(context)
          end

          private

          def sigv4_signer(context)
            # If the client was configured with the wrong region,
            # we have to build a new signer.
            if
              context[:cached_sigv4_region] &&
                context[:cached_sigv4_region] != context.config.sigv4_signer.region
              then
              S3Signer.build_v4_signer(
                region: context[:cached_sigv4_region],
                credentials: context.config.credentials
              )
            else
              context.config.sigv4_signer
            end
          end
        end

        class << self

          # @option options [required, String] :region
          # @option options [required, #credentials] :credentials
          # @api private
          def build_v4_signer(options = {})
            Aws::Sigv4::Signer.new({
              service: 's3',
              region: options[:region],
              credentials_provider: options[:credentials],
              uri_escape_path: false,
              unsigned_headers: ['content-length', 'x-amzn-trace-id'],
            })
          end

          def new_hostname(context, region)
            bucket = context.params[:bucket]
            if region == 'us-east-1'
              "#{bucket}.s3.amazonaws.com"
            else
              endpoint = Aws::Partitions::EndpointProvider.resolve(region, 's3')
              bucket + '.' + URI.parse(endpoint).host
            end
          end

        end
      end
    end
  end
end
