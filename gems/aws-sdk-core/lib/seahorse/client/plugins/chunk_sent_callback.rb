# frozen_string_literal: true

require 'pathname'
require 'forwardable'

module Seahorse
  module Client
    module Plugins

      # @api private
      class ReadCallbackIO
        extend Forwardable
        def_delegators :@io, :size

        def initialize(io, on_read = nil)
          @io = io
          @on_read = on_read if on_read.is_a? Proc
          @bytes_read = 0
        end

        attr_reader :io

        def read(*args)
          ret = @io.read(*args)
          @bytes_read += ret.bytesize if ret && ret.respond_to?(:bytesize)
          total_size = @io.respond_to?(:size) ? @io.size : nil
          @on_read.call(ret, @bytes_read, total_size) if @on_read
          ret
        end
      end

      # @api private
      class ChunkSentCallback < Plugin

        option(:on_chunk_sent,
               default: nil,
               doc_type: 'Proc',
               docstring: <<-DOCS)
When a Proc object is provided, it will be used as callback when each chunk 
of the request body is sent. It will be called with three arguments: the chunk,
the number, of bytes read from the body, and the total number of 
bytes in the body.
          DOCS

        # @api private
        class OptionHandler < Client::Handler
          def call(context)
            if context.params.is_a?(Hash)
              on_chunk_sent = context.params.delete(:on_chunk_sent)
            end
            on_chunk_sent = context.config.on_chunk_sent if on_chunk_sent.nil?
            context[:on_chunk_sent] = on_chunk_sent if on_chunk_sent
            @handler.call(context)
          end
        end

        # @api private
        class ProgressCallbackHandler < Client::Handler
          def call(context)
            if (callback = context[:on_chunk_sent])
              context.http_request.body = ReadCallbackIO.new(context.http_request.body, callback)
              add_event_listeners(context)
            end
            @handler.call(context)
          end

          def add_event_listeners(context)

            # unwrap the request body as soon as we start receiving a response
            context.http_response.on_headers do
              body = context.http_request.body
              if body.is_a? ReadCallbackIO
                context.http_request.body = body.io
              end
            end
          end
        end

        handler(OptionHandler, step: :initialize)
        # This handler needs to go late in the call stack
        # other plugins including Sigv4 and content_md5 read the request body
        # and rewind it
        handler(ProgressCallbackHandler, step: :sign, priority: 0)
      end
    end
  end
end
