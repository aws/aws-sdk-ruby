require 'spec_helper'

module Aws
  module Plugins
    describe S3Md5s do

      let(:plugin) { S3Md5s.new }

      let(:config) { Seahorse::Client::Configuration.new }

      let(:handlers) { Seahorse::Client::HandlerList.new }

      it 'adds a :compute_checksums option that defaults to true' do
        S3Md5s.new.add_options(config)
        expect(config.build!.compute_checksums).to be(true)
      end

      it 'adds a handler when compute_checkums is true' do
        plugin.add_options(config)
        plugin.add_handlers(handlers, config.build!)
        expect(handlers.count).to eq(1)
      end

      it 'adds a handler when compute_checkums is true' do
        plugin.add_options(config)
        plugin.add_handlers(handlers, config.build!)
        expect(handlers.count).to eq(1)
      end

      it 'adds a limited handler when compute_checkums is false' do
        plugin.add_options(config)
        plugin.add_handlers(handlers, config.build!(compute_checksums:false))
        expect(handlers.count).to eq(0)
        S3Md5s::REQUIRED_OPERATIONS.each do |operation|
          expect(handlers.for(operation).count).to eq(1)
        end
      end

      describe 'handler' do

        let(:context) { Seahorse::Client::RequestContext.new }

        before(:each) do
          plugin.add_options(config)
          plugin.add_handlers(handlers, config.build!)
        end

        it 'computes the Content-MD5 header from the body' do
          context.http_request.body = 'abc'
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to(
            eq('kAFQmDzST7DWlj99KOF/cg==')
          )
        end

        it 'computes the md5 in 1MB chunks for IO objects' do
          chunk = '.' * 1024 * 1024
          body = double('io-object', size: 5 * 1024 * 1024)
          expect(body).to receive(:read).
            with(1024 * 1024).
            exactly(6).times.
            and_return(chunk, chunk, chunk, chunk, chunk, nil)
          expect(body).to receive(:rewind)

          context.http_request.body = body
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to(
            eq("+kDD2/74SZx+Rz+/Dw7I1Q==")
          )
        end

        it 'skips the md5 when the body is empty' do
          context.http_request.body = ''
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to be(nil)
        end

      end
    end
  end
end
