# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module S3Control
    module Plugins
      # This plugin is an implementation detail and may be modified.
      # @api private
      class S3ControlSigner < Seahorse::Client::Plugin
        SPECIAL_OUTPOST_OPERATIONS = [
          'CreateBucket',
          'ListRegionalBuckets'
        ].freeze

        option(:sigv4_signer) do |cfg|
          S3ControlSigner.build_v4_signer(
            service: 's3',
            region: cfg.sigv4_region,
            credentials: cfg.credentials
          )
        end

        option(:sigv4_region) do |cfg|
          raise Aws::Errors::MissingRegionError if cfg.region.nil?

          Aws::Partitions::EndpointProvider.signing_region(cfg.region, 's3')
        end

        def add_handlers(handlers, _cfg)
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
            if (arn = context.metadata[:s3_arn]) &&
               arn[:arn].respond_to?(:outpost_id)
              S3ControlSigner.build_v4_signer(
                service: 's3-outposts',
                region: arn[:resolved_region],
                credentials: context.config.credentials
              )
            elsif outpost_operation?(context)
              context.http_request.endpoint.host =
                "s3-outposts.#{context.config.region}.amazonaws.com"
              S3ControlSigner.build_v4_signer(
                service: 's3-outposts',
                region: context.config.region,
                credentials: context.config.credentials
              )
            else
              context.config.sigv4_signer
            end
          end

          # Some operations do not take an ARN parameter and are special cases
          # For these operations, the presence of the outpost_id parameter
          # must trigger special endpoint and signer redirection
          def outpost_operation?(context)
            SPECIAL_OUTPOST_OPERATIONS.include?(context.operation.name) &&
              context.params[:outpost_id]
          end
        end

        class << self
          # @option options [required, String] :region
          # @option options [required, #credentials] :credentials
          # @api private
          def build_v4_signer(options = {})
            Aws::Sigv4::Signer.new(
              service: options[:service],
              region: options[:region],
              credentials_provider: options[:credentials],
              uri_escape_path: false,
              unsigned_headers: ['content-length', 'x-amzn-trace-id']
            )
          end
        end
      end
    end
  end
end
