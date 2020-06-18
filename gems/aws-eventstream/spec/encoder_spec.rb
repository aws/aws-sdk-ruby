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
          payload = double('payload', :length => 16777217)
          message = Aws::EventStream::Message.new(
            headers: {},
            payload: payload
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventPayloadLengthExceedError)
        end

        it 'raises an error when encoded headers exceeds' do
          headers = {}
          headers['foo'] = Aws::EventStream::HeaderValue.new(
            value: '*' * 131073, type: 'string'
          )
          message = Aws::EventStream::Message.new(
            headers: headers,
            payload: StringIO.new
          )
          expect {
            Encoder.new.encode(message)
          }.to raise_error(Aws::EventStream::Errors::EventHeadersLengthExceedError)

        end

      end
    end

  end
end
