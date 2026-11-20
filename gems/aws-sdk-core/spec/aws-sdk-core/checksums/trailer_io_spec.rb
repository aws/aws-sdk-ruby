# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Checksums
      describe TrailerIO do
        let(:source) { StringIO.new('payload') }
        let(:wrapper) do
          described_class.new(
            io: source,
            algorithm: 'CRC32',
            trailer_name: 'x-amz-checksum-crc32'
          )
        end

        it 'emits the exact aws-chunked wire format' do
          expected = "b\r\nHello world\r\n" \
                     "0\r\nx-amz-checksum-crc32:i9aeUg==\r\n\r\n"
          wrapper = described_class.new(
            io: StringIO.new('Hello world'),
            algorithm: 'CRC32',
            trailer_name: 'x-amz-checksum-crc32'
          )

          expect(wrapper.read).to eq(expected)
          expect(wrapper.size).to eq(expected.bytesize)
        end

        it 'writes a read result into the supplied output buffer' do
          buffer = +'old value'

          result = wrapper.read(nil, buffer)

          expect(result).to be(buffer)
          expect(buffer).to include('x-amz-checksum-crc32:')
          expect(buffer.encoding).to eq(Encoding::BINARY)
        end

        it 'honors the requested length when using an output buffer' do
          buffer = +'old value'

          result = wrapper.read(4, buffer)

          expect(result).to be(buffer)
          expect(buffer.bytesize).to eq(4)
        end

        it 'clears and returns the supplied output buffer for a zero-length read' do
          buffer = +'old value'

          result = wrapper.read(0, buffer)

          expect(result).to be(buffer)
          expect(buffer).to eq('')
          expect(buffer.encoding).to eq(Encoding::BINARY)
        end

        it 'clears the supplied output buffer at EOF' do
          wrapper.read
          buffer = +'old value'

          result = wrapper.read(1, buffer)

          expect(result).to be_nil
          expect(buffer).to eq('')
        end

        it 'raises for a negative read length' do
          expect { wrapper.read(-1) }
            .to raise_error(ArgumentError, 'negative length -1 given')
        end

        it 'supports source objects whose read method accepts only length' do
          source = Class.new do
            def initialize(value)
              @io = StringIO.new(value)
            end

            def read(length)
              @io.read(length)
            end

            def rewind
              @io.rewind
            end

            def size
              @io.size
            end
          end.new('payload')
          wrapper = described_class.new(
            io: source,
            algorithm: 'CRC32',
            trailer_name: 'x-amz-checksum-crc32'
          )

          expect(wrapper.read).to include('x-amz-checksum-crc32:')
        end

        it 'supports source objects that return frozen strings' do
          source = Class.new(StringIO) do
            def read(length)
              super&.freeze
            end
          end.new('payload')
          wrapper = described_class.new(
            io: source,
            algorithm: 'CRC32',
            trailer_name: 'x-amz-checksum-crc32'
          )

          expect(wrapper.read).to include('x-amz-checksum-crc32:')
        end

        it 'buffers short source reads into valid non-final chunks' do
          source = Class.new(StringIO) do
            def read(length = nil, buffer = nil)
              super([length || 3, 3].min, buffer)
            end
          end.new('z' * 20_000)
          wrapper = described_class.new(
            io: source,
            algorithm: 'CRC32',
            trailer_name: 'x-amz-checksum-crc32'
          )

          chunk_sizes =
            wrapper
            .read
            .scan(/^([0-9a-f]+)\r$/).flatten
            .map { |hex| hex.to_i(16) }.reject(&:zero?)

          expect(chunk_sizes[0...-1]).to all(be >= 8 * 1024)
          expect(chunk_sizes.sum).to eq(20_000)
        end

        it 'reuses a completed checksum after rewind' do
          first = wrapper.read
          source.string = 'other payload'
          wrapper.rewind
          second = wrapper.read

          first_checksum = first[/x-amz-checksum-crc32:([^\r]+)/, 1]
          second_checksum = second[/x-amz-checksum-crc32:([^\r]+)/, 1]
          expect(second_checksum).to eq(first_checksum)
        end

        it 'recalculates an incomplete checksum after rewind' do
          source.string = 'a' * 20_000
          wrapper.read(4)
          source.string = 'b' * 20_000
          wrapper.rewind

          encoded = wrapper.read

          expect(encoded).to include(
            "x-amz-checksum-crc32:#{checksum_for('CRC32', source)}"
          )
        end
      end
    end
  end
end
