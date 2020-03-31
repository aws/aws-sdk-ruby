require_relative 'spec_helper'

module Aws
  module EventStream

    describe Decoder do

      describe "#decode" do
        
        Dir.glob(File.expand_path('../fixtures/encoded/positive/*', __FILE__)).each do |path|
          expect_msg = SpecHelper.expected_decoded_message(path)

          it "decodes file: #{path} correctly" do
            decoder = Decoder.new(format: false)
            decoder.decode(File.new(path)) do |msg|
              expect(msg.payload.read).to eq(expect_msg.payload.read)
              expect(msg.headers.size).to eq(expect_msg.headers.size)
              expect(msg.headers.keys).to eq(expect_msg.headers.keys)
              msg.headers.each do |k, v|
                expect(v.value).to eq(expect_msg.headers[k].value)
                expect(v.type).to eq(expect_msg.headers[k].type)
              end
            end
          end

        end

        Dir.glob(File.expand_path('../fixtures/encoded/negative/*', __FILE__)).each do |path|
          expect_error = SpecHelper.expected_decoded_error(path)

          it "detects error for file: #{path} correctly" do
            decoder = Decoder.new
            expect {
              decoder.decode(File.new(path)).next
            }.to raise_error(expect_error)
          end
        end

        it '#decode_chunk data for multiple messages' do
          files = Dir.glob(File.expand_path('../fixtures/encoded/positive/*', __FILE__))
          data_chunk_0 = File.read(files[0], mode: 'rb')
          data_chunk_1 = File.read(files[2], mode: 'rb')
          second_message = data_chunk_1
          decoder = Decoder.new(format: false)

          msg, eof = decoder.decode_chunk("#{data_chunk_0}#{data_chunk_1}")
          expect_msg = SpecHelper.expected_decoded_message(files[0])
          expect(msg.payload.read).to eq(expect_msg.payload.read)
          expect(msg.headers.size).to eq(expect_msg.headers.size)
          expect(msg.headers.keys).to eq(expect_msg.headers.keys)
          msg.headers.each do |k, v|
            expect(v.value).to eq(expect_msg.headers[k].value)
            expect(v.type).to eq(expect_msg.headers[k].type)
          end
          expect(eof).to be false

          expect(decoder._message_buffer).to eq(second_message)

          msg, eof = decoder.decode_chunk
          expect_msg = SpecHelper.expected_decoded_message(files[2])
          expect(msg.payload.read).to eq(expect_msg.payload.read)
          expect(msg.headers.size).to eq(expect_msg.headers.size)
          expect(msg.headers.keys).to eq(expect_msg.headers.keys)
          msg.headers.each do |k, v|
            expect(v.value).to eq(expect_msg.headers[k].value)
            expect(v.type).to eq(expect_msg.headers[k].type)
          end
          expect(eof).to be true
        end

        it '#decode_chunk buffers partial prelude message' do
          file = Dir.glob(File.expand_path('../fixtures/encoded/positive/*', __FILE__)).first
          data = File.read(file)
          first_part = data[0..3]
          second_part = data[4..-1]
          decoder = Decoder.new(format: false)

          msg, eof = decoder.decode_chunk(first_part)
          expect(msg).to be_nil
          expect(eof).to be true

          expect(decoder._message_buffer).to eq(first_part)

          msg, eof = decoder.decode_chunk(second_part)
          expect_msg = SpecHelper.expected_decoded_message(file)
          expect(msg.payload.read).to eq(expect_msg.payload.read)
          expect(msg.headers.size).to eq(expect_msg.headers.size)
          expect(msg.headers.keys).to eq(expect_msg.headers.keys)
          msg.headers.each do |k, v|
            expect(v.value).to eq(expect_msg.headers[k].value)
            expect(v.type).to eq(expect_msg.headers[k].type)
          end
          expect(eof).to be true

        end

        it '#decode_chunk buffers partial message' do
          file = Dir.glob(File.expand_path('../fixtures/encoded/positive/*', __FILE__)).first
          data = File.read(file)
          first_part = data[0..13]
          second_part = data[14..-1]
          decoder = Decoder.new(format: false)

          msg, eof = decoder.decode_chunk(first_part)
          expect(msg).to be_nil
          expect(eof).to be true

          expect(decoder._message_buffer).to eq(first_part)

          msg, eof = decoder.decode_chunk(second_part)
          expect_msg = SpecHelper.expected_decoded_message(file)
          expect(msg.payload.read).to eq(expect_msg.payload.read)
          expect(msg.headers.size).to eq(expect_msg.headers.size)
          expect(msg.headers.keys).to eq(expect_msg.headers.keys)
          msg.headers.each do |k, v|
            expect(v.value).to eq(expect_msg.headers[k].value)
            expect(v.type).to eq(expect_msg.headers[k].type)
          end
          expect(eof).to be true
        end

      end
    end

  end
end
