require 'spec_helper'

module Aws
  module Plugins
    describe RetryErrors do

      it 'defaults config.retry_limit to 3' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.retry_limit).to eq(3)
      end

      describe 'ErrorInspector' do

        def inspector(error, http_status_code = 404)
          RetryErrors::ErrorInspector.new(error, http_status_code)
        end

        describe '#expired_credentials?' do

          it 'returns true if the error code is InvalidClientTokenId' do
            error = IAM::Errors::InvalidClientTokenId.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is UnrecognizedClientException' do
            error = SWF::Errors::UnrecognizedClientException.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is InvalidAccessKeyId' do
            error = S3::Errors::InvalidAccessKeyId.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is AuthFailure' do
            error = EC2::Errors::AuthFailure.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code matches /expired/' do
            error = IAM::Errors::SomethingExpiredError.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns false for other errors' do
            error = IAM::Errors::SomeRandomError.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(false)
          end

        end

        describe '#throttling_error?' do

          it 'returns true for Throttling' do
            error = IAM::Errors::Throttling.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ThrottlingException' do
            error = SWF::Errors::ThrottlingException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestThrottled' do
            error = SQS::Errors::RequestThrottled.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ProvisionedThroughputExceededException' do
            error = DynamoDB::Errors::ProvisionedThroughputExceededException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestLimitExceeded' do
            error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for BandwidthLimitExceeded' do
            error = CloudSearch::Errors::BandwidthLimitExceeded.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for LimitExceededException' do
            error = Kinesis::Errors::LimitExceededException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for error codes that match /throttl/' do
            error = IAM::Errors::Throttled.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns false for other errors' do
            error = IAM::Errors::SomeRandomError.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(false)
          end

        end

        describe '#checksum?' do

          it 'returns true if the error extends Errors::ChecksumError' do
            error = Errors::ChecksumError.new
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns true if the error is a crc32 error' do
            error = DynamoDB::Errors::CRC32CheckFailed.new(nil,nil)
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns false if the error does not exend ChecksumError' do
            error = double('error')
            expect(inspector(error).checksum?).to be(false)
          end

        end

        describe '#server?' do

          it 'returns true if the error is a 500 level error' do
            error = EC2::Errors::RandomError.new(nil,nil)
            expect(inspector(error, 500).server?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = EC2::Errors::RandomError.new(nil,nil)
            expect(inspector(error, 404).server?).to be(false)
          end

        end

        describe '#networking?' do

          it 'returns true if the error code is RequestTimeout' do
            error = S3::Errors::RequestTimeout.new(nil,nil)
            expect(inspector(error).networking?).to be(true)
          end

          it 'does not assume a networking error for 0 status code' do
            error = double('error')
            expect(inspector(error, 0).networking?).to be(false)
          end

          it 'returns false if the http status code is not 0' do
            error = double('error')
            expect(inspector(error, 307).networking?).to be(false)
          end

          it 'returns true if the error is wrapped in a NetworkingError' do
            error = StandardError.new('oops')
            error = Seahorse::Client::NetworkingError.new(error)
            expect(inspector(error, 200).networking?).to be(true)
          end

        end
      end

      describe 'Handler' do

        let(:credentials) { Credentials.new('akid', 'secret') }

        let(:cache) { EndpointCache.new }

        let(:api) { Seahorse::Model::Api.new }

        let(:config) {
          cfg = Seahorse::Client::Configuration.new
          cfg.add_option(:credentials, credentials)
          cfg.add_option(:endpoint_cache, cache)
          cfg.add_option(:api, api)
          RetryErrors.new.add_options(cfg)
          cfg.build!
        }

        let(:operation) { Seahorse::Model::Operation.new }

        let(:resp) { Seahorse::Client::Response.new }

        let(:handler) { RetryErrors::Handler.new }

        before(:each) do
          resp.context.config = config
          operation.endpoint_discovery = {}
          resp.context.operation = operation
          resp.context.http_response.status_code = 400
        end

        def handle(send_handler = nil, &block)
          allow(Kernel).to receive(:sleep)
          handler.handler = send_handler || block
          handler.call(resp.context)
        end

        it 'retries if endpoint discovery error is detected' do
          config.api.endpoint_operation = :describe_endpoints
          DescribeEndpointsRequest = Seahorse::Model::Shapes::StructureShape.new(
            name:'DescribeEndpointsRequest')
          config.api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
            o.endpoint_operation = true
            o.input = Seahorse::Model::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
          end)
          resp.error = Errors::EndpointDiscoveryError.new

          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'does not retry responses that have no error' do
          resp.error = nil
          send_handler = double('send-handler')
          expect(send_handler).to receive(:call).once.and_return(resp)
          handle(send_handler)
        end

        it 'reties 3 times for a total of 4 attemps' do
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          send_handler = double('send-handler')
          expect(send_handler).to receive(:call).
            exactly(4).times.
            with(resp.context).
            and_return(resp)
          handle(send_handler)
        end

        it 'backs off exponentially between each retry attempt' do
          expect(Kernel).to receive(:sleep).with(0.3).ordered
          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'increments the retry count on the context' do
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'rewinds the request body before each retry attempt' do
          body = resp.context.http_request.body
          expect(body).to receive(:rewind).exactly(3).times
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'truncates the response body before each retry attempt' do
          body = double('truncatable-body', pos: 100, truncate: 0)
          resp.context.http_response.body = body
          expect(body).to receive(:truncate).with(0).exactly(3).times
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'skips retry if un-truncatable response body has received data' do
          resp.context.http_response.body = double('write-once-body', pos: 100)
          resp.error = EC2::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(0)
        end

        it 'retries if creds expire and are refreshable' do
          expect(credentials).to receive(:refresh!).exactly(3).times
          resp.error = EC2::Errors::AuthFailure.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'skips retry if creds expire and are not refreshable' do
          resp.error = EC2::Errors::AuthFailure.new(nil,nil)
          handle { |context| resp }
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
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

      end
    end
  end
end
