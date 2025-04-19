# frozen_string_literal: true

module Aws
  module Core
    module Plugins
      # @api private
      class RequestCompression < Smithy::Client::Plugin
        DEFAULT_MIN_COMPRESSION_SIZE = 10_240
        MIN_COMPRESSION_SIZE_LIMIT = 10_485_760
        SUPPORTED_ENCODINGS = %w[gzip].freeze
        CHUNK_SIZE = 1 * 1024 * 1024 # one MB

        option(
          :disable_request_compression,
          default: false,
          doc_type: 'Boolean',
          docstring: <<~DOCS) do |_config|
            When set to 'true' the request body will not be compressed for supported operations.
          DOCS
          value = ENV['DISABLE_REQUEST_COMPRESSION'] || 'false'
          value == 'true'
        end

        option(
          :request_min_compression_size_bytes,
          default: DEFAULT_MIN_COMPRESSION_SIZE,
          doc_type: Integer,
          docstring: <<~DOCS) do |_config|
            The minimum size in bytes that triggers compression for request bodies.
            The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
          DOCS
          value = ENV['REQUEST_MIN_COMPRESSION_SIZE_BYTES'] || DEFAULT_MIN_COMPRESSION_SIZE
          Integer(value)
        end

        def after_initialize(client)
          validate_disable_request_compression_input(client.config)
          validate_request_min_compression_size_bytes_input(client.config)
        end

        def validate_disable_request_compression_input(config)
          return if [true, false].include?(config.disable_request_compression)

          raise ArgumentError,
                ':disable_request_compression must be either `true` or `false`'
        end

        def validate_request_min_compression_size_bytes_input(config)
          return if config.request_min_compression_size_bytes.between?(0, MIN_COMPRESSION_SIZE_LIMIT)

          raise ArgumentError,
                ':request_min_compression_size_bytes must be a non-negative integer '\
                'value between `0` and `10,485,760` bytes inclusive'
        end

        def add_handlers(handlers, _config)
          # Ensure compression is performed BEFORE checksum
          handlers.add(Handler, priority: 25)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            if should_compress?(context)
              selected_encoding = request_encoding_selection(context)
              if selected_encoding
                if streaming?(context.operation.input)
                  process_streaming_compression(selected_encoding, context)
                elsif context.request.body.size >= context.config.request_min_compression_size_bytes
                  process_compression(selected_encoding, context)
                end
              end
            end
            @handler.call(context)
          end

          private

          def should_compress?(context)
            context.operation.traits.include?('smithy.api#requestCompression') &&
              !context.config.disable_request_compression
          end

          def request_encoding_selection(context)
            encodings = context.operation.traits['smithy.api#requestCompression']['encodings']
            encodings.find { |encoding| RequestCompression::SUPPORTED_ENCODINGS.include?(encoding) }
          end

          def streaming?(input)
            input.members.each_value do |member_shape|
              return true if member_shape.traits.include?('smithy.api#streaming') &&
                             !member_shape.traits.include?('smithy.api#requiresLength')
            end
            false
          end

          def process_streaming_compression(encoding, context)
            case encoding
            when 'gzip'
              context.request.body = GzipIO.new(context.request.body)
            else
              raise StandardError, "Encoding #{encoding} is not supported"
            end
            update_content_encoding(encoding, context)
          end

          def process_compression(encoding, context)
            case encoding
            when 'gzip'
              gzip_compress(context)
            else
              raise StandardError, "We currently do not support #{encoding} encoding"
            end
            update_content_encoding(encoding, context)
          end

          def gzip_compress(context)
            compressed = StringIO.new
            compressed.binmode
            gzip_writer = Zlib::GzipWriter.new(compressed)
            if context.request.body.respond_to?(:read)
              update_in_chunks(gzip_writer, context.request.body)
            else
              gzip_writer.write(context.request.body)
            end
            gzip_writer.close
            new_body = StringIO.new(compressed.string)
            context.request.body = new_body
          end

          def update_in_chunks(compressor, io)
            loop do
              chunk = io.read(CHUNK_SIZE)
              break unless chunk

              compressor.write(chunk)
            end
          end

          def update_content_encoding(encoding, context)
            headers = context.request.headers
            if headers['Content-Encoding']
              headers['Content-Encoding'] += ", #{encoding}"
            else
              headers['Content-Encoding'] = encoding
            end
          end

          # @api private
          class GzipIO
            def initialize(body)
              @body = body
              @buffer = ChunkBuffer.new
              @gzip_writer = Zlib::GzipWriter.new(@buffer)
            end

            def read(length, buff = nil)
              if @gzip_writer.closed?
                # an empty string to signify an end as
                # there will be nothing remaining to be read
                StringIO.new('').read(length, buff)
                return
              end

              chunk = @body.read(length)
              if !chunk || chunk.empty?
                # closing the writer will write one last chunk
                # with a trailer (to be read from the @buffer)
                @gzip_writer.close
              else
                # flush happens first to ensure that header fields
                # are being sent over since write will override
                @gzip_writer.flush
                @gzip_writer.write(chunk)
              end

              StringIO.new(@buffer.last_chunk).read(length, buff)
            end
          end

          # @api private
          class ChunkBuffer
            def initialize
              @last_chunk = nil
            end

            attr_reader :last_chunk

            def write(data)
              @last_chunk = data
            end
          end
        end
      end
    end
  end
end
