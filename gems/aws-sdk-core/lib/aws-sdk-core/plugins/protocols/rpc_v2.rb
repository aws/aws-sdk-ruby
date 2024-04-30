# frozen_string_literal: true

module Aws
  module Plugins
    module Protocols
      class RpcV2 < Seahorse::Client::Plugin

        class ContentTypeHandler < Seahorse::Client::Handler
          def call(context)
            if eventstream?(context)
              value = 'application/vnd.amazon.eventstream'
              context.http_request.headers['Content-Type'] ||= value
              context.http_request.headers['Accept'] ||= value
            elsif !empty_input_structure?(context)
              context.http_request.headers['Content-Type'] ||=
                'application/cbor'
            end

            @handler.call(context)
          end

          private

          def eventstream?(context)
            context.operation.input.shape.members.each do |_, ref|
              return true if ref.eventstream
            end
            false
          end

          def empty_input_structure?(context)
            context.operation.input.shape.struct_class == EmptyStructure
          end
        end

        handler(Aws::RpcV2::Handler)
        handler(ContentTypeHandler, priority: 30)
        handler(Aws::RpcV2::ErrorHandler, step: :sign)

      end
    end
  end
end
