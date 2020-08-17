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

          # Some IO objects support readpartial - IO.copy_stream used by the
          # request will call readpartial if available, so define a wrapper
          # for it if the underlying IO supports it.
          if @io.respond_to?(:readpartial)
            def self.readpartial(*args)
              @io.readpartial(*args).tap do |chunk|
                handle_chunk(chunk)
              end
            end
          end
        end

        attr_reader :io

        def read(*args)
          @io.read(*args).tap do |chunk|
            handle_chunk(chunk)
          end
        end

        private

        def handle_chunk(chunk)
          @bytes_read += chunk.bytesize if chunk && chunk.respond_to?(:bytesize)
          total_size = @io.respond_to?(:size) ? @io.size : nil
          @on_read.call(chunk, @bytes_read, total_size) if @on_read
        end
      end

      # @api private
      class RequestCallback < Plugin

        option(
          :on_chunk_sent,
           default: nil,
           doc_type: 'Proc',
           docstring: <<-DOCS)
When a Proc object is provided, it will be used as callback when each chunk 
of the request body is sent. It provides three arguments: the chunk,
the number of bytes read from the body, and the total number of 
bytes in the body.
          DOCS

        # @api private
        class OptionHandler < Client::Handler
          def call(context)
            if context.params.is_a?(Hash) && context.params[:on_chunk_sent]
              on_chunk_sent = context.params.delete(:on_chunk_sent)
            end
            on_chunk_sent = context.config.on_chunk_sent if on_chunk_sent.nil?
            context[:on_chunk_sent] = on_chunk_sent if on_chunk_sent
            @handler.call(context)
          end
        end

        # @api private
        class ReadCallbackHandler < Client::Handler
          def call(context)
            if (callback = context[:on_chunk_sent])
              context.http_request.body = ReadCallbackIO.new(
                context.http_request.body,
                callback
              )
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

        # OptionHandler is needed to remove :on_chunk_sent
        # from the params before build
        handler(OptionHandler, step: :initialize)

        # ReadCallbackHandlerneeds to go late in the call stack
        # other plugins including Sigv4 and content_md5 read the request body
        # and rewind it
        handler(ReadCallbackHandler, step: :sign, priority: 0)
      end
    end
  end
end
