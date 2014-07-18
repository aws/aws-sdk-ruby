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
      #    port.  When the scheme is not set it defaults to `https`.
      #
      class Endpoint < Plugin

        option(:endpoint)

        class Handler < Client::Handler

          def call(context)
            context.http_request.endpoint = build_endpoint(context)
            @handler.call(context)
          end

          private

          def build_endpoint(context)
            uri = configured_endpoint(context)
            apply_path_params(uri, context)
            apply_querystring_params(uri, context)
            uri
          end

          def configured_endpoint(context)
            if context.config.endpoint
              endpoint = context.config.endpoint.to_s
              endpoint = "https://#{endpoint}" unless endpoint =~ /^http/
              URI.parse(endpoint)
            else
              raise "required configuration option :endpoint not set"
            end
          end

          def apply_path_params(uri, context)
            path = uri.path.sub(/\/$/, '')
            path += context.operation.http_request_uri.split('?')[0]
            input = context.operation.input
            uri.path = path.gsub(/{\w+}/) do |placeholder|
              placeholder = placeholder[1..-2]
              name, shape = input.member_by_location_name(placeholder)
              param = context.params[name]
              param.split('/').map{ |value| escape(value) }.join('/')
            end
          end

          def apply_querystring_params(uri, context)
            parts = []
            parts << context.operation.http_request_uri.split('?')[1]
            parts.compact!
            if input = context.operation.input
              params = context.params
              input.members.each do |member_name, member|
                if member.location == 'querystring' && !params[member_name].nil?
                  param_name = member.location_name
                  param_value = params[member_name]
                  parts << "#{param_name}=#{escape(param_value.to_s)}"
                end
              end
            end
            uri.query = parts.empty? ? nil : parts.join('&')
          end

          def escape(string)
            CGI::escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end

        end

        handle(Handler, priority: 90)

      end
    end
  end
end
