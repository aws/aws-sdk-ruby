# frozen_string_literal: true

module Aws
  module S3
    module Plugins

      # @api private
      class RetryableBlockIO
        extend Forwardable
        def_delegators :@block_io, :write, :read, :size

        def initialize(block_io)
          @block_io = block_io
        end

        def truncate(_integer); end

        def rewind; end
      end

      # TODO: docs
      # TODO: This could be applied to file based targets as well: create a wrapper around managed file and no-op truncate.
      # @api private
      class StreamingRetry < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            target = context.params[:response_target] || context[:response_target]

            # Streaming retry is only supported when response_target is a Proc
            # AND when range is NOT set on the initial request
            if target && target.is_a?(Proc) && !context.params[:range]
              add_event_listeners(context, target)
            end
            @handler.call(context)
          end

          private

          def add_event_listeners(context, target)
            handler = self
            context.http_response.on_headers(200..299) do
              if context.http_response.body.is_a? Seahorse::Client::BlockIO
                context.http_response.body = RetryableBlockIO.new(context.http_response.body)
              end
            end

            context.http_response.on_error do |error|
              if context.http_response.body.is_a?(RetryableBlockIO) &&
                  error.is_a?(Seahorse::Client::NetworkingError) &&
                  error.original_error.is_a?(Seahorse::Client::NetHttp::Handler::TruncatedBodyError)
                context.http_request.headers[:range] = "bytes=#{context.http_response.body.size}-"
              else
                context.http_response.body = StringIO.new # something to write the error to
              end
            end
          end

        end

        handler(Handler,
                step: :initialize,
                operations: [:get_object]
        )
      end
    end
  end
end
