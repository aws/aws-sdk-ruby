# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module Plugins
      describe ContentLength::Handler do

        it 'adds content-length to regular payload' do
          handler = ContentLength::Handler.new(lambda { |context| })
          context = RequestContext.new
          context.http_request.body = 'BODY'
          context.http_request.http_method = 'POST'
          handler.call(context)
          expect(context.http_request.headers['Content-Length']).to eq('4')
        end

        it 'does not add content-length for methods without bodies' do
          handler = ContentLength::Handler.new(lambda { |context| })
          context = RequestContext.new
          context.http_request.body = ''
          context.http_request.http_method = 'GET'
          handler.call(context)
          expect(context.http_request.headers['Content-Length']).to be_nil
        end

      end
    end
  end
end
