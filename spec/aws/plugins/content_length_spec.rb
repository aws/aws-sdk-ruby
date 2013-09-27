require 'spec_helper'

module Aws
  module Plugins
    describe ContentLength::Handler do

      it 'adds content-length to regular payload' do
        response = call_handler(ContentLength::Handler) do |context|
          context.http_request.body = StringIO.new('BODY')
        end
        expect(response.http_request.headers['content-length']).to eq '4'
      end

    end
  end
end
