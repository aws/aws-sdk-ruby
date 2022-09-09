# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Plugins
    # @api private
    class Sign < Seahorse::Client::Plugin
      # These once had defaults. But now they are used as overrides to
      # new endpoint and auth resolution.
      option(:sigv4_signer)
      option(:sigv4_name)
      option(:sigv4_region)
      option(:unsigned_operations, default: [])

      def add_handlers(handlers, cfg)
        operations = cfg.api.operation_names - cfg.unsigned_operations
        handlers.add(Handler, step: :sign, operations: operations)
      end

      class Handler < Seahorse::Client::Handler
        def call(context)
          auth_scheme = context[:endpoint][:auth_scheme]
          signer = signer_for(context, auth_scheme)

          case signer
          when Aws::Sigv4::Signer
            Sign::SignatureV4.apply_signature(signer, context)
          when 'Bearer'
            Sign::Bearer.apply(context)
          end

          @handler.call(context)
        end

        private

        # @api private
        def _sigv4_name(cfg, scheme)
          cfg.sigv4_name || scheme['signingName'] ||
            cfg.api.metadata['signingName'] ||
            cfg.api.metadata['endpointPrefix']
        end

        # @api private
        def _sigv4_region(cfg, scheme)
          cfg.sigv4_region || scheme['signingRegion'] ||
            '*' if scheme['name'] == 'sigv4a' || cfg.region
        end


        def signer_for(context, auth_scheme)
          case auth_scheme['name']
          when 'sigv2'
            # don't sign, shouldn't happen in new rules
          when 'sigv4', 'sigv4a'
            begin
              Aws::Sigv4::Signer.new(
                service: _sigv4_name(context.config, auth_scheme),
                region: _sigv4_region(context.config, auth_scheme),
                credentials_provider: context.config.credentials,
                signing_algorithm: auth_scheme['name'].to_sym,
                uri_escape_path: !!!auth_scheme['disableDoubleEncoding'],
                unsigned_headers: %w[content-length user-agent x-amzn-trace-id]
              )
            rescue Aws::Sigv4::Errors::MissingCredentialsError
              raise Aws::Errors::MissingCredentialsError
            end
          when 'bearer'
            'Bearer'
          when 'none'
            # don't sign
          end
        end
      end

      # @!api private
      module Bearer
        class << self
          def apply(context)
            if context.http_request.endpoint.scheme != 'https'
              raise ArgumentError,
                    'Unable to use bearer authorization on non https endpoint.'
            end

            token_provider = context.config.token_provider
            if token_provider&.set?
              context.http_request.headers['Authorization'] =
                "Bearer #{token_provider.token.token}"
            else
              raise Errors::MissingBearerTokenError
            end
          end
        end
      end

      # @api private
      module SignatureV4
        class << self
          def apply_signature(signer, context)
            req = context.http_request

            apply_authtype(context, req)
            reset_signature(req)
            apply_clock_skew(context, req)

            # compute the signature
            begin
              signature = signer.sign_request(
                http_method: req.http_method,
                url: req.endpoint,
                headers: req.headers,
                body: req.body
              )
            rescue Aws::Sigv4::Errors::MissingCredentialsError
              # Necessary for when credentials is explicitly set to nil
              raise Aws::Errors::MissingCredentialsError
            end
            # apply signature headers
            req.headers.update(signature.headers)

            # add request metadata with signature components for debugging
            context[:canonical_request] = signature.canonical_request
            context[:string_to_sign] = signature.string_to_sign
          end

          private

          def apply_authtype(context, req)
            if context.operation['authtype'].eql?('v4-unsigned-body') &&
               req.endpoint.scheme.eql?('https')
              req.headers['X-Amz-Content-Sha256'] ||= 'UNSIGNED-PAYLOAD'
            end
          end

          def reset_signature(req)
            # in case this request is being re-signed
            req.headers.delete('Authorization')
            req.headers.delete('X-Amz-Security-Token')
            req.headers.delete('X-Amz-Date')
            req.headers.delete('x-Amz-Region-Set')
          end

          def apply_clock_skew(context, req)
            if context.config.respond_to?(:clock_skew) &&
               context.config.clock_skew &&
               context.config.correct_clock_skew

              endpoint = context.http_request.endpoint
              skew = context.config.clock_skew.clock_correction(endpoint)
              if skew.abs.positive?
                req.headers['X-Amz-Date'] =
                  (Time.now.utc + skew).strftime('%Y%m%dT%H%M%SZ')
              end
            end
          end
        end

      end
    end
  end
end
