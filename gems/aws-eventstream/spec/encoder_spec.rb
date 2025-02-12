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

        it 'encodes large payloads' do
          message = Aws::EventStream::Message.new(
            headers: {},
            payload: StringIO.new('.' * 24 * 1024 * 1024)
          )
          Encoder.new.encode(message)
        end

        it 'encodes long headers' do
          headers = {}
          headers['foo'] = Aws::EventStream::HeaderValue.new(
            value: '*' * 131_073, type: 'string'
          )
          message = Aws::EventStream::Message.new(
            headers: headers,
            payload: StringIO.new
          )
          Encoder.new.encode(message)

        end

      end
    end

  end
end
