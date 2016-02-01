require 'spec_helper'
require 'uri'

module Aws
  module Plugins
    describe SQSQueueUrls do

      let(:config) {
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:region)
        cfg.add_option(:sigv4_region)
        cfg
      }

      let(:params) {{ queue_url: 'http://foo.com' }}

      def send_request
        call_handler(SQSQueueUrls::Handler, params:params, config:config)
      end

      it 'moves the queue url param to the http request endpoint' do
        resp = send_request
        expect(resp.context.http_request.endpoint).to eq(URI.parse('http://foo.com/'))
      end

      it 'resets the configured region based on the queue url' do
        params[:queue_url] = 'http://sqs.us-west-2.amazonaws.com/url'
        resp = send_request
        expect(resp.context.config.region).to eq('us-west-2')
        expect(resp.context.config.sigv4_region).to eq('us-west-2')
      end

      it 'raises an argument error for badly formatted queue urls' do
        params[:queue_url] = 'oops'
        expect {
          send_request
        }.to raise_error(ArgumentError, /invalid endpoint/)
      end

      it 'does not raise an error for fake sqs queue urls' do
        params[:queue_url] = 'http://localhost:4567/test_queue'
        expect {
          send_request
        }.to_not raise_error
      end

    end
  end
end
