# frozen_string_literal: true

module Aws
  module Rest
    class ContentTypeHandler < Seahorse::Client::Handler
      def call(context)
        body = context.http_request.body
        if !body.respond_to?(:size) ||
           (body.respond_to?(:size) && body.size > 0)
          # appropriate content-type is set when serializing payload body
          case (protocol = context.config.api.metadata['protocol'])
          when 'rest-json'
            context.http_request.headers['Content-Type'] ||=
              'application/json'
          when 'rest-xml'
            context.http_request.headers['Content-Type'] ||=
              'application/xml'
          else raise "Unsupported protocol #{protocol}"
          end
        end
        @handler.call(context)
      end
    end
  end
end
