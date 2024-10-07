# frozen_string_literal: true

module Seahorse
  module Client
    module Plugins
      class Endpoint < Plugin

        option(:endpoint,
          doc_type: 'String, URI::HTTPS, URI::HTTP',
          docstring: <<-DOCS)
Normally you should not configure the `:endpoint` option
directly. This is normally constructed from the `:region`
option. Configuring `:endpoint` is normally reserved for
connecting to test or custom endpoints. The endpoint should
be a URI formatted like:

    'http://example.com'
    'https://example.com'
    'http://example.com:123'
          DOCS

        def add_handlers(handlers, config)
          handlers.add(Handler, priority: 90)
        end

        def after_initialize(client)
          # validate endpoint only if user set a custom endpoint
          return if client.config.respond_to?(:regional_endpoint) && client.config.regional_endpoint

          endpoint = client.config.endpoint
          endpoint = URI.parse(endpoint.to_s)
          if URI::HTTPS === endpoint or URI::HTTP === endpoint
            client.config.endpoint = endpoint
          else
            msg = 'expected :endpoint to be a HTTP or HTTPS endpoint'
            raise ArgumentError, msg
          end
        end

        class Handler < Client::Handler

          def call(context)
            if !context.config.respond_to?(:regional_endpoint) || # generic
               !context.config.regional_endpoint || # custom endpoint
               !context.config.respond_to?(:endpoint_provider) # legacy/pre-ep2/no rules
              context.http_request.endpoint = URI.parse(context.config.endpoint.to_s)
            end
            @handler.call(context)
          end

        end
      end
    end
  end
end
