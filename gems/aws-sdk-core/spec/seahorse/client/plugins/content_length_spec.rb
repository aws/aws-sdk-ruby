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
          handler.call(context)
          expect(context.http_request.headers['Content-Length']).to eq('4')
        end

        it 'does nto add content-length for empty payload' do
          handler = ContentLength::Handler.new(lambda { |context| })
          context = RequestContext.new
          context.http_request.body = ''
          handler.call(context)
          expect(context.http_request.headers['Content-Length']).to be_nil
        end

      end
    end
  end
end
