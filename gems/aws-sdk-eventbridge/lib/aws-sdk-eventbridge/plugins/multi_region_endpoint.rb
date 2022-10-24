# frozen_string_literal: true


module Aws
  module EventBridge
    module Plugins
      # Resolve Multi-Region Endpoints
      class MultiRegionEndpoint < Seahorse::Client::Plugin

        def add_handlers(handlers, _config)
          handlers.add(Handler, operations: [:put_events])
        end

        # After extracting out any ARN input, resolve a new URL with it.
        class Handler < Seahorse::Client::Handler
          def call(context)
            if (multi_region_endpoint_id = context.params[:endpoint_id])

              validate_multi_region_endpoint!(multi_region_endpoint_id)
              validate_config!(context)

              url = context.http_request.endpoint
              region = context.config.region

              # if regional_endpoint is false, a custom endpoint was provided
              # customer provided endpoints should be used as is
              if context.config.regional_endpoint
                sfx = Aws::Partitions::EndpointProvider.dns_suffix_for(
                  region, 'events', { dualstack: context.config.use_dualstack_endpoint }
                )
                url.host = "#{multi_region_endpoint_id}.endpoint.events.#{sfx}"
              end

              context.config.sigv4_signer = sigv4a_signer(context)
            end

            @handler.call(context)
          end

          private

          def validate_multi_region_endpoint!(multi_region_endpoint_id)
            unless !multi_region_endpoint_id.empty? &&
                valid_hostname?(multi_region_endpoint_id)
              raise ArgumentError, 'multi_region_endpoint_id must be a valid host label.'
            end
          end

          def valid_hostname?(str)
            str =~ /^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])(\.([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9]))*$/
          end

          def validate_config!(context)
            if context.config.use_fips_endpoint
              raise ArgumentError,
                    'FIPS is not supported with EventBridge multi-region endpoints.'
            end
          end

          def sigv4a_signer(context)
            existing = context.config.sigv4_signer
            Aws::Sigv4::Signer.new(
              service: existing.service,
              region: '*',
              credentials_provider: existing.credentials_provider,
              signing_algorithm: :sigv4a,
              uri_escape_path: true,
              unsigned_headers: existing.unsigned_headers
            )
          end
        end
      end
    end
  end
end
