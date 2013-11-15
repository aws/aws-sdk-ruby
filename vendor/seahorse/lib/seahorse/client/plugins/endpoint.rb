module Seahorse
  module Client
    module Plugins

      # @seahorse.client.option [String] :endpoint
      #    The HTTP or HTTPS endpoint to send requests to.
      #    For example:
      #
      #        'example.com'
      #        'http://example.com'
      #        'https://example.com'
      #        'http://example.com:123'
      #
      #    This must include the host.  It may also include the scheme and
      #    port.  When the scheme is not set it defaults to `https`
      #    or `http` based on the `:ssl_default` option.
      #
      # @seahorse.client.option [Boolean] :ssl_default (true)
      #    When `true`, endpoints without a scheme are prefixed by `http://`.
      #    When `false`, endpoints without a scheme are prefixed by `http://`.
      #
      class Endpoint < Plugin

        option(:endpoint) { |config| config.api.endpoint }

        option(:ssl_default, true)

        class Handler < Client::Handler

          def call(context)
            populate_endpoint(context)
            @handler.call(context)
          end

          def populate_endpoint(context)
            ssl_default = context.config.ssl_default
            endpoint = context.config.endpoint
            endpoint = Http::Endpoint.new(endpoint, ssl_default: ssl_default)

            request_uri = endpoint.path == '/' ? '' : endpoint.path
            request_uri += RequestUriBuilder.new(
              context.operation.http_path || '/',
              context.operation.input.uri_members,
            ).path(context.params)
            endpoint.request_uri = request_uri

            context.http_request.endpoint = endpoint
          end

        end

        handle(Handler, priority: 90)

        # @api private
        class RequestUriBuilder

          PLACEHOLDER_REGEX = /{\w+?}/

          # @param [String] path_pattern
          # @param [Hash<Model::Shapes::Shape>] rules
          def initialize(path_pattern, rules)
            @pattern = path_pattern
            @rules = rules
          end

          # @param [Hash] params
          # @return [String<URI path>]
          def path(params)
            path, querystring = @pattern.split('?')
            path = escape_path_params(path, params)
            if querystring
              querystring = escape_querystring_params(querystring, params)
              path = "#{path}?#{querystring}" unless querystring.empty?
            end
            path
          end

          private

          def escape_path_params(path, params)
            path.gsub(PLACEHOLDER_REGEX) do |placeholder|
              param_value = params[param_name(placeholder)]
              path_escape(param_value)
            end
          end

          def escape_querystring_params(querystring, params)
            parts = []
            querystring.split('&').each do |part|
              if match = part.match(PLACEHOLDER_REGEX)
                placeholder = match[0]
                param_value = params[param_name(placeholder)]
                unless param_value.nil?
                  parts << part.sub(placeholder, escape(param_value.to_s))
                end
              else
                parts << part # querystring param has no substitution
              end
            end
            parts.join('&')
          end

          def param_name(placeholder)
            placeholder[1..-2].to_sym
          end

          def path_escape(value)
            escape(value).gsub('%2F', '/')
          end

          def escape(string)
            CGI::escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end

        end

      end
    end
  end
end
