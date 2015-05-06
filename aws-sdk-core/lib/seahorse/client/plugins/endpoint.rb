module Seahorse
  module Client
    module Plugins

      # @seahorse.client.option [String] :endpoint
      #    The HTTP or HTTPS endpoint to send requests to.
      #    For example:
      #
      #        'http://example.com'
      #        'https://example.com'
      #        'http://example.com:123'
      #
      class Endpoint < Plugin

        option(:endpoint)

        def after_initialize(client)
          endpoint = URI.parse(client.config.endpoint.to_s)
          if URI::HTTPS === endpoint or URI::HTTP === endpoint
            client.config.endpoint = endpoint
          else
            msg = 'expected :endpoint to be a HTTP or HTTPS endpoint'
            raise ArgumentError, msg
          end
        end

        class Handler < Client::Handler

          def call(context)
            context.http_request.endpoint = build_endpoint(context)
            @handler.call(context)
          end

          private

          def build_endpoint(context)
            uri = URI.parse(context.config.endpoint.to_s)
            apply_path_params(uri, context)
            apply_querystring_params(uri, context)
            uri
          end

          def apply_path_params(uri, context)
            path = uri.path.sub(/\/$/, '')
            path += context.operation.http_request_uri.split('?')[0]
            input = context.operation.input
            uri.path = path.gsub(/{\w+\+?}/) do |placeholder|
              if placeholder.include?('+')
                placeholder = placeholder[1..-3]
                greedy = true
              else
                placeholder = placeholder[1..-2]
              end
              name, shape = input.member_by_location_name(placeholder)
              param = context.params[name]
              if greedy
                param = param.gsub(/[^\/]+/) { |v| escape(v) }
              else
                escape(param)
              end
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
            Util.uri_escape(string)
          end

        end

        handle(Handler, priority: 90)

      end
    end
  end
end
