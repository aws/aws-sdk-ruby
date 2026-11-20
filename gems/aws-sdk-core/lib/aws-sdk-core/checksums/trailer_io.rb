# frozen_string_literal: true

require_relative '../checksums'

module Aws
  module Core
    module Checksums
      # Encodes a streaming request body using aws-chunked framing and adds
      # the calculated checksum as the final trailer.
      # @api private
      class TrailerIO
        # TODO: Support configurable stream chunk sizes when Smithy Client's
        # Net::HTTP transport exposes an equivalent capability.
        DEFAULT_CHUNK_SIZE = 16_384
        CHUNK_OVERHEAD = 4
        TRAILER_OVERHEAD = 8
        HEX_BASE = 16

        def initialize(io:, algorithm:, trailer_name:)
          @io = io
          @io.rewind if @io.respond_to?(:rewind)
          @trailer_name = trailer_name
          @algorithm = algorithm
          @digest = Checksums.digest_for(@algorithm)
          @chunk_size = DEFAULT_CHUNK_SIZE
          @overhead_bytes = calculate_overhead(@chunk_size)
          @base_chunk_size = @chunk_size - @overhead_bytes
          @raw_buffer = ''.b
          @encoded_buffer = ''.b
          @source_eof = false
          @eof = false
          @completed_checksum = nil # Set after EOF when the digest is final.
        end

        def size
          original_size = @io.size
          full_chunks = original_size / @base_chunk_size
          partial_bytes = original_size % @base_chunk_size
          full_overhead = @base_chunk_size.to_s(HEX_BASE).size + CHUNK_OVERHEAD
          encoded_size = full_chunks * (@base_chunk_size + full_overhead)
          unless partial_bytes.zero?
            encoded_size +=
              partial_bytes.to_s(HEX_BASE).size +
              partial_bytes +
              CHUNK_OVERHEAD
          end
          encoded_size + trailer_length
        end

        def rewind
          @io.rewind
          @raw_buffer = ''.b
          @encoded_buffer = ''.b
          @source_eof = false
          @eof = false
          # Reuse a finished checksum across retries. An interrupted attempt
          # has no completed value, so it starts a fresh digest.
          @digest = Checksums.digest_for(@algorithm) unless @completed_checksum
        end

        def read(length = nil, buffer = nil)
          raise ArgumentError, "negative length #{length} given" if length&.negative?

          output = output_buffer(buffer)
          return output if length&.zero?
          return if eof?

          fill_encoded_buffer(length)
          drain_encoded_buffer(output, length)
          return if output.empty? && eof?

          output
        end

        def eof?
          @eof && @encoded_buffer.empty?
        end

        private

        def output_buffer(buffer)
          output = buffer || ''.b
          output.clear
          output.force_encoding(Encoding::BINARY)
          output
        end

        def drain_encoded_buffer(output, length)
          if length
            output << @encoded_buffer.slice!(0, length)
          else
            output << @encoded_buffer
            @encoded_buffer.clear
          end
        end

        def calculate_overhead(chunk_size)
          chunk_size.to_s(HEX_BASE).size + CHUNK_OVERHEAD
        end

        def fill_encoded_buffer(required_length)
          return if required_length &&
                    @encoded_buffer.bytesize >= required_length

          append_next_chunk while !@eof && fill_data?(required_length)
        end

        def append_next_chunk
          chunk = read_data_chunk
          return append_data_chunk(chunk) if chunk && !chunk.empty?

          append_trailer
        end

        def append_data_chunk(chunk)
          @digest.update(chunk) unless @completed_checksum
          @encoded_buffer << chunk.bytesize.to_s(HEX_BASE) << "\r\n"
          @encoded_buffer << chunk << "\r\n"
        end

        def append_trailer
          @completed_checksum ||= @digest.base64digest
          @encoded_buffer << "0\r\n" << @trailer_name << ':'
          @encoded_buffer << @completed_checksum << "\r\n\r\n"
          @eof = true
        end

        # "0\r\n", the trailer colon, and the final "\r\n\r\n" add eight bytes.
        def trailer_length
          TRAILER_OVERHEAD +
            @trailer_name.bytesize +
            Checksums.base64_length(@algorithm)
        end

        def read_data_chunk
          while @raw_buffer.bytesize < @base_chunk_size && !@source_eof
            chunk = @io.read(@base_chunk_size - @raw_buffer.bytesize)
            if chunk.nil? || chunk.empty?
              @source_eof = true
            else
              @raw_buffer << chunk
            end
          end
          return if @raw_buffer.empty?

          @raw_buffer.slice!(0, @base_chunk_size)
        end

        def fill_data?(length)
          length.nil? || @encoded_buffer.bytesize < length
        end
      end
    end
  end
end
