require 'spec_helper'
require 'tempfile'

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

        it 'computes the md5 for Tempfile objects' do
          body = Tempfile.new('tempfile')
          body.write('.' * 5 * 1024 * 1024)
          body.flush

          context.http_request.body = body
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to(
            eq("+kDD2/74SZx+Rz+/Dw7I1Q==")
          )
        end

        it 'computes the md5 for File objects with memory efficiency' do
          body = Tempfile.new('tempfile')
          body.write('.' * 5 * 1024 * 1024)
          body.flush
          file = body.to_io

          expect(file).to receive(:dup).and_return(file)
          expect(file).to receive(:read).
            exactly(6).times.
            with(1024 * 1024, kind_of(String)). # read the object in 1MB chunks, using buffer
            and_call_original

          context.http_request.body = file
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to(
            eq("+kDD2/74SZx+Rz+/Dw7I1Q==")
          )
        end

        it 'computes the md5 using binmode for IO objects' do
          body = Tempfile.new('tempfile')
          body.write('.' * 5 * 1024 * 1024)
          body.flush
          file = body.to_io

          # Confirm dup(2) which allows tokKeep original IO object to retain their
          # original binmode state
          expect(file).to receive(:dup).and_return(file)
          expect(file).to receive(:binmode).and_call_original

          context.http_request.body = file
          handlers.add(NoSendHandler, step: :send)
          handlers.to_stack.call(context)
          expect(context.http_request.headers['Content-Md5']).to(
            eq("+kDD2/74SZx+Rz+/Dw7I1Q==")
          )
        end

        it 'computes the md5 for non-file IO objects' do
          size = 5 * 1024 * 1024
          body = StringIO.new('.' * size)

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
