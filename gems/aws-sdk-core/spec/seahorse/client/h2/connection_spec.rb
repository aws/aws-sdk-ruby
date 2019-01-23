require_relative '../../../spec_helper'

module Seahorse
  module Client
    module H2
      describe Connection do
        if RUBY_VERSION >= '2.1'
          let(:conn) { Connection.new }

          describe '#new_stream' do

            it 'returns a new HTTP2 stream' do
              expect(conn.new_stream).to be_kind_of(HTTP2::Stream)
            end

          end

          describe '#close!' do

            it 'kills input_signal_thread' do
              count = 0
              thread = Thread.new do
                count += 1
              end
              conn.input_signal_thread = thread
              conn.close!
              expect(conn.input_signal_thread).to be_nil
              expect(thread.alive?).to be(false)
            end
          end
        end

      end
    end
  end
end
