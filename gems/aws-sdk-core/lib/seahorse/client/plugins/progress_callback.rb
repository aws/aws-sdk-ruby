# frozen_string_literal: true

require 'pathname'
require 'forwardable'

module Seahorse
  module Client
    module Plugins

      class ProgressTrackingBody
        extend Forwardable
        def_delegators :@io, :size

        def initialize(io, progress_callback = nil)
          @io = io
          @progress_callback = progress_callback if progress_callback.is_a? Proc
          @bytes_read = 0
        end

        attr_reader :io

        def read(*args)
          ret = @io.read(*args)
          @bytes_read += ret.bytesize if ret && ret.respond_to?(:bytesize)
          total_size = @io.respond_to?(:size) ? @io.size : nil
          @progress_callback.call(@bytes_read, total_size) if @progress_callback
          ret
        end
      end

      # @api private
      class ProgressCallback < Plugin

        option(:progress_callback,
               default: nil,
               doc_type: 'Proc',
               docstring: <<-DOCS) do |cfg|
When a Proc object is provided, it will be used as callback when each chunk 
of the request body is sent. It will be called with two arguments: the number
of bytes read from the body, and the total number of bytes in the body.
          DOCS
          resolve_progress_callback(cfg)
        end

        def self.resolve_progress_callback(cfg)
          puts "Resolve called!"
          value = cfg.progress_callback
          value
        end

        # @api private
        class OptionHandler < Client::Handler
          def call(context)
            if context.params.is_a?(Hash)
              progress_callback = context.params.delete(:progress_callback)
            end
            progress_callback = context.config.progress_callback if progress_callback.nil?
            context[:progress_callback] = progress_callback if progress_callback
            @handler.call(context)
          end
        end

        # @api private
        class ProgressCallbackHandler < Client::Handler
          def call(context)
            if (callback = context[:progress_callback])
              context.http_request.body = ProgressTrackingBody.new(context.http_request.body, callback)
              add_event_listeners(context)
            end
            @handler.call(context)
          end

          def add_event_listeners(context)

            # unwrap the request body as soon as we start receiving a response
            context.http_response.on_headers do
              body = context.http_request.body
              if body.is_a? ProgressTrackingBody
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
