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
          endpoint = client.config.endpoint
          endpoint = URI.parse(endpoint) if endpoint.is_a?(String)
          if endpoint.nil? || URI::HTTP === endpoint || URI::HTTPS === endpoint
            client.config.endpoint = endpoint
          else
            msg = 'invalid endpoint, expected URI::HTTP, URI::HTTPS, or nil, '\
                  "got #{endpoint.inspect}"
            raise ArgumentError, msg
          end
        end

        class Handler < Client::Handler

          def call(context)
            context.http_request.endpoint = context.config.endpoint
            @handler.call(context)
          end

        end
      end
    end
  end
end
