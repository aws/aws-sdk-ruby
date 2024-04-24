# frozen_string_literal: true

module Aws
  module Rest
    # NOTE: headers could be already populated if specified on input shape
    class ContentTypeHandler < Seahorse::Client::Handler
      def call(context)
        body = context.http_request.body

        if (payload = context.operation.input[:payload_member])
          case payload.shape
          when Seahorse::Model::Shapes::BlobShape
            context.http_request.headers['Content-Type'] ||=
              'application/octet-stream'
          when Seahorse::Model::Shapes::StringShape
            context.http_request.headers['Content-Type'] ||=
              'text/plain'
          else
            apply_default_content_type(context)
          end
        elsif !body.respond_to?(:size) || non_empty_body?(body)
          apply_default_content_type(context)
        end

        @handler.call(context)
      end

      private
      def non_empty_body?(body)
        body.respond_to?(:size) && body.size.positive?
      end

      # content-type defaults as noted here:
      # rest-json: https://smithy.io/2.0/aws/protocols/aws-restxml-protocol.html#content-type
      # rest-xml: https://smithy.io/2.0/aws/protocols/aws-restxml-protocol.html#content-type
      def apply_default_content_type(context)
        if eventstream?(context)
          context.http_request.headers['Content-Type'] ||=
            'application/vnd.amazon.eventstream'
          return
        end
        protocol = context.config.api.metadata['protocol']
        case protocol
        when 'rest-json'
          context.http_request.headers['Content-Type'] ||=
            'application/json'
        when 'rest-xml'
          context.http_request.headers['Content-Type'] ||=
            'application/xml'
        else raise "Unsupported protocol #{protocol}"
        end
      end

      def eventstream?(context)
        context.operation.input.shape.members.each do |_, ref|
          return ref if ref.eventstream
        end
      end
    end
  end
end
