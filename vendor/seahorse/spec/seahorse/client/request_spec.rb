require 'spec_helper'

module Seahorse
  module Client
    describe Request do

      let(:handlers) { HandlerList.new }

      let(:context) { RequestContext.new }

      let(:request) { Request.new(handlers, context) }

      it 'is a HandlerBuilder' do
        expect(request).to be_kind_of(HandlerBuilder)
      end

      describe '#handlers' do

        it 'returns the handler list' do
          handlers = HandlerList.new
          request = Request.new(handlers, context)
          expect(request.handlers).to be(handlers)
        end

      end

      describe '#context' do

        it 'returns the request context given the constructor' do
          context = RequestContext.new
          request = Request.new(handlers, context)
          expect(request.context).to be(context)
        end

      end

      describe '#send_request' do

        it 'contructs a stack from the handler list' do
          expect(handlers).to receive(:to_stack).and_return(->(context) {})
          request.send_request
        end

        it 'returns the response from the handler stack #call method' do
          response = double('response')
          allow(handlers).to receive(:to_stack).and_return(->(_) { response })
          expect(request.send_request).to be(response)
        end

        it 'passes the request context to the handler stack' do
          passed = nil
          allow(handlers).to receive(:to_stack).
            and_return(->(context) { passed = context })
          request.send_request
          expect(passed).to be(context)
        end

        it 'returns the response from the handler stack' do
          resp = Response.new
          allow(handlers).to receive(:to_stack).and_return(->(context) { resp })
          expect(Request.new(handlers, context).send_request).to be(resp)
        end

      end

      describe '#send_request with a block' do

        let(:handler) do
          Proc.new do
            context.http_response.body.write('part1')
            context.http_response.body.write('part2')
            context.http_response.body.write('part3')
            Response.new(context: context)
          end
        end

        before(:each) do
          allow(handlers).to receive(:to_stack).and_return(handler)
        end

        it 'streams data from the handler to the #send_request block' do
          data = []
          request.send_request { |chunk| data << chunk }
          expect(data).to eq(['part1', 'part2', 'part3'])
        end

        it 'counts the bytes yielded' do
          resp = request.send_request { |chunk| }
          expect(resp.http_response.body.size).to eq(15)
        end

        it 'does not buffer the response chunks' do
          response = request.send_request { |chunk| }
          body = response.http_response.body
          expect(body.read).to eq('')
          expect(body).not_to respond_to(:truncate)
        end

      end
    end
  end
end
