require 'spec_helper'

#module Aws
#  module Plugins
#    describe DynamoDBCRC32Validation do
#
#      let(:plugin) { DynamoDBCRC32Validation.new }
#
#      let(:config) { Seahorse::Client::Configuration.new }
#
#      let(:handlers) { Seahorse::Client::HandlerList.new }
#
#      it 'adds a :compute_checksums option that defaults to true' do
#        DynamoDBCRC32Validation.new.add_options(config)
#        expect(config.build!.compute_checksums).to be(true)
#      end
#
#      it 'adds a handler when compute_checksums is true' do
#        plugin.add_options(config)
#        plugin.add_handlers(handlers, config.build!)
#        expect(handlers.count).to eq(1)
#      end
#
#      describe 'handler' do
#
#        let(:context) { Seahorse::Client::RequestContext.new }
#
#        let(:resp) { Seahorse::Client::Response.new }
#
#        let(:handler) { DynamoDBCRC32Validation::Handler.new }
#
#        before(:each) do
#          plugin.add_options(config)
#          plugin.add_handlers(handlers, config.build!)
#          handlers.add(NoSendHandler, step: :send)
#        end
#
#        def handle(send_handler = nil, &block)
#          allow(Kernel).to receive(:sleep)
#          handler.handler = send_handler || block
#          handler.call(resp.context)
#        end
#
#        it 'rejects responses with an invalid crc32 header' do
#          context.http_request.body = 'corrupted'
#          resp.context.http_response.headers['x-amz-crc32'] = 'invalid'
#          allow(handler).to receive(:calculate_crc32) { 'valid' }
#          send_handler = double('send-handler')
#          expect(send_handler).to receive(:call).once.and_return(resp)
#          handle(send_handler)
#        end
#
#        it 'accepts responses with a valid crc32 header' do
#          context.http_request.body = 'clean'
#          resp.context.http_response.headers['x-amy-crc32'] = 'valid'
#          allow(handler).to receive(:calculate_crc32) { 'valid' }
#          send_handler = double('send-handler')
#          expect(send_handler).to receive(:call).once.and_return(resp)
#          handle(send_handler)
#        end
#
#        it 'accepts responses with a missing crc32 header' do
#          context.http_request.body = 'mystery'
#          send_handler = double('send-handler')
#          expect(send_handler).to receive(:call).once.and_return(resp)
#          handle(send_handler)
#        end
#
#      end
#    end
#  end
#end
