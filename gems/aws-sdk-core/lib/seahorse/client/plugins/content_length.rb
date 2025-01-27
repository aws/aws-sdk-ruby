# frozen_string_literal: true

module Seahorse
  module Client
    module Plugins
      class ContentLength < Plugin

        # @api private
        class Handler < Client::Handler
          # https://github.com/ruby/net-http/blob/master/lib/net/http/requests.rb
          # Methods without body are forwards compatible, because content-length
          # may be set for requests without body but is technically incorrect.
          METHODS_WITHOUT_BODY = Set.new(
            %w[GET HEAD DELETE OPTIONS TRACE COPY MOVE]
          )

          def call(context)
            thread = Thread.current
            body = context.http_request.body
            method = context.http_request.http_method
            # We use Net::HTTP with body_stream which doesn't do this by default
            if body.respond_to?(:size) && !METHODS_WITHOUT_BODY.include?(method)
              thread[:request_size_data] << body.size
              context.http_request.headers['Content-Length'] = body.size
            end
            resp = @handler.call(context)
            if context.http_response.body.respond_to?(:size)
              thread[:response_size_data] << context.http_response.body.size
            end
            resp
          end
        end

        handler(Handler, step: :sign, priority: 0)

      end
    end
  end
end
