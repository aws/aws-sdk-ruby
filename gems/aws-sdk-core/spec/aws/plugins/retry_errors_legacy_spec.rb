# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../retry_errors_helper'

module Aws
  module Plugins
    describe RetryErrors do
      let(:client) { RetryErrorsSvc::Client.new(stub_responses: true) }

      it 'defaults config.retry_limit to 3' do
        expect(client.config.retry_limit).to eq(3)
      end

      it 'defaults config.retry_max_delay to 0' do
        expect(client.config.retry_max_delay).to eq(0)
      end

      it 'defaults config.retry_base_delay to 0.3' do
        expect(client.config.retry_base_delay).to eq(0.3)
      end

      it 'defaults config.retry_jitter to :none' do
        expect(client.config.retry_jitter).to eq(:none)
      end

      it 'defaults config.retry_mode to legacy' do
        expect(client.config.retry_mode).to eq('legacy')
      end

      it 'uses the legacy handler when retry_mode is legacy' do
        client = RetryErrorsSvc::Client.new(retry_mode: 'legacy', region: 'us-west-2')
        expect(client.handlers.entries.map(&:handler_class)).to include(RetryErrors::LegacyHandler)
      end

      it 'sets user-agent metric' do
        client = RetryErrorsSvc::Client.new(retry_mode: 'legacy', region: 'us-west-2')
        stub_request(:post, client.config.endpoint)
        resp = client.example_operation
        metric = Aws::Plugins::UserAgent::METRICS['RETRY_MODE_LEGACY']
        expect(resp.context.http_request.headers['User-Agent'])
          .to include("m/#{metric}")
      end
    end

    describe RetryErrors::LegacyHandler do
      let(:credentials) { Credentials.new('akid', 'secret') }

      let(:cache) { EndpointCache.new }

      let(:api) { Seahorse::Model::Api.new }

      let(:config) do
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:credentials, credentials)
        cfg.add_option(:endpoint_cache, cache)
        cfg.add_option(:api, api)
        cfg.add_option(:profile, nil)
        RetryErrors.new.add_options(cfg)
        cfg.build!
      end

      let(:operation) { Seahorse::Model::Operation.new }

      let(:resp) { Seahorse::Client::Response.new }

      let(:handler) { RetryErrors::LegacyHandler.new }

      before(:each) do
        resp.context.config = config
        operation.endpoint_discovery = {}
        resp.context.operation = operation
        resp.context.http_response.status_code = 400
      end

      it 'does not retry responses that have no error' do
        resp.error = nil
        send_handler = double('send-handler')
        expect(send_handler).to receive(:call).once.and_return(resp)
        handle(send_handler)
      end

      it 'retries 3 times for a total of 4 attempts' do
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        send_handler = double('send-handler')
        expect(send_handler).to receive(:call)
          .exactly(4).times
          .with(resp.context)
          .and_return(resp)
        handle(send_handler)
      end

      it 'backs off according to custom retry_backoff proc' do
        config.retry_backoff = ->(c) { Kernel.sleep([0.4, 0.2, 1.7][c.retries]) }
        expect(Kernel).to receive(:sleep).with(0.4).ordered
        expect(Kernel).to receive(:sleep).with(0.2).ordered
        expect(Kernel).to receive(:sleep).with(1.7).ordered
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'backs off exponentially between each retry attempt' do
        expect(Kernel).to receive(:sleep).with(0.3).ordered
        expect(Kernel).to receive(:sleep).with(0.6).ordered
        expect(Kernel).to receive(:sleep).with(1.2).ordered
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'backs off exponentially between each retry attempt with custom :retry_base_delay' do
        config.retry_base_delay = 1.0
        expect(Kernel).to receive(:sleep).with(1.0).ordered
        expect(Kernel).to receive(:sleep).with(2.0).ordered
        expect(Kernel).to receive(:sleep).with(4.0).ordered
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'caps backoff delay to :retry_max_delay ' do
        config.retry_max_delay = 4.0
        config.retry_limit = 6
        expect(Kernel).to receive(:sleep).with(0.3).ordered
        expect(Kernel).to receive(:sleep).with(0.6).ordered
        expect(Kernel).to receive(:sleep).with(1.2).ordered
        expect(Kernel).to receive(:sleep).with(2.4).ordered
        expect(Kernel).to receive(:sleep).with(4.0).ordered
        expect(Kernel).to receive(:sleep).with(4.0).ordered
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'randomises the backoff delay with :retry_jitter set to :full' do
        config.retry_jitter = :full
        config.retry_max_delay = 2.0
        config.retry_limit = 4

        expect(Kernel).to receive(:rand).with(0..0.3).ordered.and_return(1)
        expect(Kernel).to receive(:sleep).with(1).ordered

        expect(Kernel).to receive(:rand).with(0..0.6).ordered.and_return(2)
        expect(Kernel).to receive(:sleep).with(2).ordered

        expect(Kernel).to receive(:rand).with(0..1.2).ordered.and_return(3)
        expect(Kernel).to receive(:sleep).with(3).ordered

        expect(Kernel).to receive(:rand).with(0..2.0).ordered.and_return(4)
        expect(Kernel).to receive(:sleep).with(4).ordered

        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'randomises the backoff delay with :retry_jitter set to :equal' do
        config.retry_jitter = :equal
        config.retry_max_delay = 2.0
        config.retry_limit = 4

        expect(Kernel).to receive(:rand).with(0..0.3 / 2).ordered.and_return(1)
        expect(Kernel).to receive(:sleep).with(1 + 0.3 / 2).ordered

        expect(Kernel).to receive(:rand).with(0..0.6 / 2).ordered.and_return(2)
        expect(Kernel).to receive(:sleep).with(2 + 0.6 / 2).ordered

        expect(Kernel).to receive(:rand).with(0..1.2 / 2).ordered.and_return(3)
        expect(Kernel).to receive(:sleep).with(3 + 1.2 / 2).ordered

        expect(Kernel).to receive(:rand).with(0..2.0 / 2).ordered.and_return(4)
        expect(Kernel).to receive(:sleep).with(4 + 2.0 / 2).ordered

        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'raises KeyError with invalid jitter function' do
        config.retry_jitter = :unknown
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        expect { handle { |_context| resp } }.to raise_error(KeyError)
      end

      it 'adjusts delay with custom jitter' do
        config.retry_jitter = ->(delay) { delay * 2 }

        expect(Kernel).to receive(:sleep).with(0.6).ordered
        expect(Kernel).to receive(:sleep).with(1.2).ordered
        expect(Kernel).to receive(:sleep).with(2.4).ordered

        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'increments the retry count on the context' do
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
        expect(resp.context.retries).to eq(3)
      end

      it 'rewinds the request body before each retry attempt' do
        body = resp.context.http_request.body
        expect(body).to receive(:rewind).exactly(3).times
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'truncates the response body before each retry attempt' do
        body = double('truncatable-body', pos: 100, truncate: 0)
        resp.context.http_response.body = body
        expect(body).to receive(:truncate).with(0).exactly(3).times
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
      end

      it 'skips retry if un-truncatable response body has received data' do
        resp.context.http_response.body = double('write-once-body', pos: 100)
        resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
        handle { |_context| resp }
        expect(resp.context.retries).to eq(0)
      end

      it 'retries if creds expire and are refreshable' do
        # Note: this adds the refresh! method to credentials
        expect(credentials).to receive(:refresh!).exactly(3).times
        resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil, nil)
        handle { |_context| resp }
        expect(resp.context.retries).to eq(3)
      end

      it 'does not call refresh! when error is expired credentials and clock skew' do
        resp.error = RetryErrorsSvc::Errors::RequestExpired.new(nil, nil)
        resp.context.http_response.headers['date'] = (Time.now + 10*60).iso8601
        handle { |_context| resp }
        expect(resp.context.retries).to eq(1)
      end

      it 'retries if endpoint discovery error is detected' do
        config.api.endpoint_operation = :describe_endpoints
        DescribeEndpointsRequest = Seahorse::Model::Shapes::StructureShape.new(
          name: 'DescribeEndpointsRequest'
        )
        config.api.add_operation(
          :describe_endpoints,
          Seahorse::Model::Operation.new.tap do |o|
            o.endpoint_operation = true
            o.input = Seahorse::Model::Shapes::ShapeRef.new(
              shape: DescribeEndpointsRequest
            )
          end
        )
        resp.error = Errors::EndpointDiscoveryError.new

        handle { |_context| resp }
        expect(resp.context.retries).to eq(3)
      end

      it 'skips retry if creds expire and are not refreshable' do
        resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil, nil)
        handle { |_context| resp }
        expect(resp.context.retries).to eq(0)
      end

      it 'retries 500 level errors' do
        error = RuntimeError.new('random-runtime-error')
        handle do |context|
          context.http_response.signal_headers(500, {})
          context.http_response.signal_error(error)
          resp
        end
        expect(resp.context.retries).to eq(3)
      end

      it 'retries Seahorse::Client::NetworkingErrors' do
        error = RuntimeError.new('random-runtime-error')
        resp.error = Seahorse::Client::NetworkingError.new(error)
        handle { |_context| resp }
        expect(resp.context.retries).to eq(3)
      end
    end
  end
end
