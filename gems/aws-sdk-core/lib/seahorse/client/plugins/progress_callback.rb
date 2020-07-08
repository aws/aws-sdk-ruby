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

        def read(*args)
          ret = @io.read(*args)
          @bytes_read += ret.bytesize if ret
          @progress_callback.call(@bytes_read, @io.size) if @progress_callback
          ret
        end
      end

      # @api private
      class ProgressCallback < Plugin

        option(:progress_callback,
               default: nil,
               doc_type: 'Proc',
               docstring: <<-DOCS)
A callback for upload progress [TODO: add more description].
        DOCS

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
            end
            @handler.call(context)
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
