require 'spec_helper'

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
        expect(resp.http_request.endpoint).to eq('http://foo.com/')
      end

      it 'resets the configured region based on the queue url' do
        params[:queue_url] = 'http://sqs.us-west-2.amazonaws.com/url'
        resp = send_request
        expect(resp.context.config.region).to eq('us-west-2')
        expect(resp.context.config.sigv4_region).to eq('us-west-2')
      end

    end
  end
end
