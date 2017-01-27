require 'spec_helper'
require 'uri'

module Aws
  module Plugins
    describe S3BucketDns do

      let(:plugin) { S3BucketDns.new }
      
      describe 'handler' do

        let(:handlers) { Seahorse::Client::HandlerList.new }
      
        let(:config) { Seahorse::Client::Configuration.new }

        let(:context) { Seahorse::Client::RequestContext.new }

        before(:each) do
          plugin.add_options(config)
          plugin.add_handlers(handlers, config.build!)
        end

        it 's3 bucket aws endpoint' do
          handlers.add(NoSendHandler, step: :send)
          context.params[:bucket] = 'bucket-name'
          context.http_request.endpoint = URI.parse("https://s3.amazonaws.com/")
          resp = handlers.to_stack.call(context)
          expect(resp.context.http_request.endpoint).to eq(URI.parse("https://bucket-name.s3.amazonaws.com/"))
        end

        it 's3 bucket IP endpoint' do
          handlers.add(NoSendHandler, step: :send)
          context.params[:bucket] = 'bucket-name'
          context.http_request.endpoint = URI.parse("https://127.0.0.1:9021")
          resp = handlers.to_stack.call(context)
          expect(resp.context.http_request.endpoint).to eq(URI.parse("https://127.0.0.1:9021"))
        end
      end
    end
  end
end
