# frozen_string_literal: true

require 'fileutils'
require 'tempfile'
require_relative 'spec_helper'

module Aws
  module EventStream

    describe Encoder do

      describe '#encode' do

        Dir.glob(File.expand_path('../fixtures/decoded/positive/*', __FILE__)).each do |path|

          suit_name = File.basename(path)
          expect_path = File.join(File.expand_path('../fixtures/encoded/positive', __FILE__), suit_name)

          msg_raw = SpecHelper.convert_msg(path) # msg to be encoded

          it "encode suit: #{suit_name} correctly" do
            test_io = StringIO.new(String.new)
            Encoder.new.encode(msg_raw, test_io)
            expectation = File.read(expect_path, mode: 'rb').freeze
            expect(test_io.string.freeze).to eq(expectation)
          end
        end
      end

      describe '#encode error' do

        it 'raises an error when payload exceeds' do
          payload = double('payload', :length => 24 * 1024 * 1024 + 1)
          message = Aws::EventStream::Message.new(
            headers: {},
            payload: payload
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventPayloadLengthExceedError)
        end

        it 'raises an error when encoded headers exceeds' do
          # Four in-limit values whose combined encoded size exceeds the 128kb header block.
          headers = {}
          ['a', 'b', 'c', 'd'].each do |key|
            headers[key] = Aws::EventStream::HeaderValue.new(
              value: '*' * 32_767, type: 'string'
            )
          end
          message = Aws::EventStream::Message.new(
            headers: headers,
            payload: StringIO.new
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeadersLengthExceedError)

        end

      end

      describe '#encode header length validation' do

        def message_with_header(key, value)
          Aws::EventStream::Message.new(
            headers: { key => value },
            payload: StringIO.new
          )
        end

        it 'encodes a 255-byte header name' do
          message = message_with_header(
            'n' * 255,
            Aws::EventStream::HeaderValue.new(value: true, type: 'bool_true')
          )
          expect { Encoder.new.encode(message) }.not_to raise_error
        end

        it 'raises for a 256-byte header name' do
          message = message_with_header(
            'n' * 256,
            Aws::EventStream::HeaderValue.new(value: true, type: 'bool_true')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderNameLengthExceedError)
        end

        it 'raises for a multibyte header name within char count but over 255 bytes' do
          # 128 two-byte characters => 256 encoded bytes.
          message = message_with_header(
            "ñ" * 128,
            Aws::EventStream::HeaderValue.new(value: true, type: 'bool_true')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderNameLengthExceedError)
        end

        it 'round-trips a 32767-byte string value' do
          value = 'a' * 32_767
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: value, type: 'string')
          )
          encoded = Encoder.new.encode(message)
          decoded, _eof = Decoder.new(format: false).decode_chunk(encoded)
          expect(decoded.headers['n'].value).to eq(value)
        end

        it 'raises for a 32768-byte string value' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 'a' * 32_768, type: 'string')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
        end

        it 'raises for a 65536-byte string value' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 'a' * 65_536, type: 'string')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
        end

        it 'raises for a multibyte string value within char count but over the byte limit' do
          # 16384 two-byte characters => 32768 encoded bytes, char count well under the limit.
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: "ñ" * 16_384, type: 'string')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
        end

        it 'round-trips a 32767-byte bytes value' do
          value = ('a' * 32_767).b
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: value, type: 'bytes')
          )
          encoded = Encoder.new.encode(message)
          decoded, _eof = Decoder.new(format: false).decode_chunk(encoded)
          expect(decoded.headers['n'].value.bytesize).to eq(32_767)
        end

        it 'raises for a 32768-byte bytes value' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 'a' * 32_768, type: 'bytes')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
        end

        it 'raises for a 65536-byte bytes value' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 'a' * 65_536, type: 'bytes')
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
        end

        it 'writes nothing to the output IO when validation fails' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 'a' * 32_768, type: 'string')
          )
          test_io = StringIO.new(String.new)
          expect {
            Encoder.new.encode(message, test_io)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueLengthExceedError)
          expect(test_io.string).to be_empty
        end

      end

      describe '#encode fixed-width value validation' do

        def message_with_header(key, value)
          Aws::EventStream::Message.new(
            headers: { key => value },
            payload: StringIO.new
          )
        end

        it 'round-trips a 16-byte uuid value' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: "".b * 16, type: 'uuid')
          )
          encoded = Encoder.new.encode(message)
          decoded, _eof = Decoder.new(format: false).decode_chunk(encoded)
          expect(decoded.headers['n'].value.bytesize).to eq(16)
        end

        it 'raises for a uuid value that is not exactly 16 bytes' do
          [15, 17].each do |size|
            message = message_with_header(
              'n', Aws::EventStream::HeaderValue.new(value: "".b * size, type: 'uuid')
            )
            expect {
              Encoder.new.encode(message)
            }.to raise_error(Aws::EventStream::Errors::EventHeaderValueWidthError)
          end
        end

        {
          'byte' => 1,
          'short' => 2,
          'integer' => 4,
          'long' => 8,
          'timestamp' => 8
        }.each do |type, width|
          limit = 1 << (width * 8 - 1)

          it "round-trips the min and max in-range #{type} value" do
            [-limit, limit - 1].each do |value|
              message = message_with_header(
                'n', Aws::EventStream::HeaderValue.new(value: value, type: type)
              )
              encoded = Encoder.new.encode(message)
              decoded, _eof = Decoder.new(format: false).decode_chunk(encoded)
              expect(decoded.headers['n'].value).to eq(value)
            end
          end

          it "raises for an out-of-range #{type} value" do
            [limit, -limit - 1].each do |value|
              message = message_with_header(
                'n', Aws::EventStream::HeaderValue.new(value: value, type: type)
              )
              expect {
                Encoder.new.encode(message)
              }.to raise_error(Aws::EventStream::Errors::EventHeaderValueWidthError)
            end
          end
        end

        it 'writes nothing to the output IO when a fixed-width value is rejected' do
          message = message_with_header(
            'n', Aws::EventStream::HeaderValue.new(value: 2**31, type: 'integer')
          )
          test_io = StringIO.new(String.new)
          expect {
            Encoder.new.encode(message, test_io)
          }.to raise_error(Aws::EventStream::Errors::EventHeaderValueWidthError)
          expect(test_io.string).to be_empty
        end

      end
    end

  end
end
