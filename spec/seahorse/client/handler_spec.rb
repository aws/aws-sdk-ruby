require 'spec_helper'

module Seahorse
  module Client
    describe Handler do

      let(:context) { RequestContext.new }
      let(:response) { Response.new }

      it 'provides access to the nested handler' do
        handler = Handler.new
        expect(Handler.new(handler).handler).to be(handler)
      end

      it 'responds to #call' do
        expect(Handler.new).to respond_to(:call)
      end

      it 'chains #call to the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        Handler.new(handler).call(context)
      end

      it 'returns the response from the nested handler' do
        handler = double('handler')
        expect(handler).to receive(:call).with(context) { response }
        expect(Handler.new(handler).call(context)).to be(response)
      end

      describe '#inspect' do

        it 'overrides class name for anonymous handler' do
          handler = Class.new(Handler).new
          expect(handler.inspect).to eql '#<UnnamedHandler @handler=nil>'
        end
      end
    end
  end
end
