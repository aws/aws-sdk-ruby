# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe InvocationId::Handler do
        let(:handler) { InvocationId::Handler.new(->(_context) {}) }
        let(:context) { Smithy::Client::HandlerContext.new }

        it 'sets the amz-sdk-invocation-id header' do
          handler.call(context)
          expect(context.http_request.headers['amz-sdk-invocation-id']).to_not be_nil
        end

        it 'sets a unique value per invocation' do
          handler.call(context)
          first = context.http_request.headers['amz-sdk-invocation-id']

          context2 = Smithy::Client::HandlerContext.new
          handler.call(context2)
          second = context2.http_request.headers['amz-sdk-invocation-id']

          expect(first).to_not eq(second)
        end
      end
    end
  end
end
