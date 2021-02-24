# frozen_string_literal: true

module Aws
  module S3
    module Plugins

      class IADRegionalEndpoint < Seahorse::Client::Plugin

        option(:s3_us_east_1_regional_endpoint,
          default: 'legacy',
          doc_type: String,
          docstring: <<-DOCS) do |cfg|
Passing in `regional` to enable regional endpoint for S3's `us-east-1`
region. Defaults to `legacy` mode using global endpoint.
          DOCS
          resolve_iad_regional_endpoint(cfg)
        end

        def add_handlers(handlers, config)
          if config.region == 'us-east-1'
            handlers.add(Handler)
          end
        end

        # @api private
        class Handler < Seahorse::Client::Handler

          def call(context)
            # keep legacy global endpoint pattern by default
            if context.config.s3_us_east_1_regional_endpoint == 'legacy'
              host = context.http_request.endpoint.host
              # if it's an ARN or private link endpoint, then
              # don't touch the endpoint at all
              unless context.metadata[:s3_arn] ||
                     IADRegionalEndpoint.private_link_host?(host, context)
                legacy_host = IADRegionalEndpoint.legacy_host(host)
                context.http_request.endpoint.host = legacy_host
              end
            end
            @handler.call(context)
          end

        end

        def self.legacy_host(host)
          host.sub(".us-east-1", '')
        end

        private

        def self.private_link_host?(host, context)
          force_path_style = context.config.force_path_style
          private_link_endpoint_prefix = 'bucket'.freeze

          if force_path_style
            # bucket is in the path, so use first member
            actual_endpoint_prefix = host.split(".")[0]
          else
            # bucket is a host label, so use second member
            actual_endpoint_prefix = host.split(".")[1]
          end
          private_link_endpoint_prefix == actual_endpoint_prefix
        end

        def self.resolve_iad_regional_endpoint(cfg)
          mode = ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] ||
            Aws.shared_config.s3_us_east_1_regional_endpoint(profile: cfg.profile) ||
            'legacy'
          mode = mode.downcase
          unless %w(legacy regional).include?(mode)
            raise ArgumentError, "expected :s3_us_east_1_regional_endpoint or"\
              " ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] to be `legacy` or"\
              " `regional`."
          end
          mode
        end

      end

    end
  end
end
