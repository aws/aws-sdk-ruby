require_relative '../../../spec_helper'
require_relative 'retry_errors_spec_helper'

module Aws
  module Plugins
    describe RetryErrors::ErrorInspector do

      def inspector(error, http_status_code = 404)
        resp = Seahorse::Client::Response.new
        resp.error = (error.is_a? Class) ? error.new(nil, nil) : error
        resp.context.http_response.status_code = http_status_code
        RetryErrors::ErrorInspector.new(resp)
      end

      describe '#expired_credentials?' do
        expired_credentials_errors = [
          RetryErrorsSvc::Errors::UnrecognizedClientException,
          RetryErrorsSvc::Errors::InvalidClientTokenId,
          RetryErrorsSvc::Errors::InvalidAccessKeyId,
          RetryErrorsSvc::Errors::AuthFailure,
          RetryErrorsSvc::Errors::InvalidIdentityToken,
          RetryErrorsSvc::Errors::ExpiredToken
        ]

        expired_credentials_errors.each do |e|
          it "returns true for #{e.name}" do
            expect(inspector(e).expired_credentials?).to be(true)
          end
        end

        it 'returns true for error types that match /expired/' do
          expect(inspector(RetryErrorsSvc::Errors::SomethingExpiredErro).expired_credentials?).to be(true)
        end

        it 'returns false for other errors' do
          expect(inspector(RetryErrorsSvc::Errors::SomeRandomError).expired_credentials?).to be(false)
        end
      end

      describe '#throttling_error?' do
        thorttling_errors = [
          RetryErrorsSvc::Errors::Throttling,
          RetryErrorsSvc::Errors::ThrottlingException,
          RetryErrorsSvc::Errors::ThrottledException,
          RetryErrorsSvc::Errors::RequestThrottled,
          RetryErrorsSvc::Errors::RequestThrottledException,
          RetryErrorsSvc::Errors::ProvisionedThroughputExceededException,
          RetryErrorsSvc::Errors::TransactionInProgressException,
          RetryErrorsSvc::Errors::RequestLimitExceeded,
          RetryErrorsSvc::Errors::BandwidthLimitExceeded,
          RetryErrorsSvc::Errors::LimitExceededException,
          RetryErrorsSvc::Errors::TooManyRequestsException,
          RetryErrorsSvc::Errors::PriorRequestNotComplete,
          RetryErrorsSvc::Errors::SlowDown,
          RetryErrorsSvc::Errors::EC2ThrottledException
        ]

        thorttling_errors.each do |e|
          it "returns true for #{e.name}" do
            expect(inspector(e).throttling_error?).to be(true)
          end
        end

        it 'returns true for error types that match /throttl/' do
          expect(inspector(RetryErrorsSvc::Errors::Throttled).throttling_error?).to be(true)
        end

        it 'returns true for response status code 429' do
          expect(inspector(RetryErrorsSvc::Errors::SomeRandomError, 429).throttling_error?).to be(true)
        end

        it 'returns false for other errors' do
          expect(inspector(RetryErrorsSvc::Errors::SomeRandomError).throttling_error?).to be(false)
        end
      end

      describe '#checksum?' do
        it 'returns true for CRC32CheckFailed' do
          expect(inspector(RetryErrorsSvc::Errors::CRC32CheckFailed).checksum?).to be(true)
        end

        it 'returns true if the error extends Errors::ChecksumError' do
          expect(inspector(Errors::ChecksumError.new).checksum?).to be(true)
        end

        it 'returns false for other errors' do
          expect(inspector(RetryErrorsSvc::Errors::SomeRandomError).checksum?).to be(false)
        end
      end

      describe '#server?' do
        it 'returns true if the error is a 500 level error' do
          expect(inspector(RetryErrorsSvc::Errors::RandomError, 500).server?).to be(true)
        end

        it 'returns false if the error is not a 500 level error' do
          expect(inspector(RetryErrorsSvc::Errors::RandomError, 404).server?).to be(false)
        end
      end

      describe '#networking?' do
        it 'returns true for RequestTimeout' do
          expect(inspector(RetryErrorsSvc::Errors::RequestTimeout).networking?).to be(true)
        end

        it 'returns true for RequestTimeoutException' do
          expect(inspector(RetryErrorsSvc::Errors::RequestTimeoutException).networking?).to be(true)
        end

        it 'returns true for IDPCommunicationError' do
          expect(inspector(RetryErrorsSvc::Errors::IDPCommunicationError).networking?).to be(true)
        end

        it 'returns true if the error extends NetworkingError' do
          error = StandardError.new('oops')
          error = Seahorse::Client::NetworkingError.new(error)
          expect(inspector(error, 200).networking?).to be(true)
        end

        it 'returns true if the error extends NoSuchEndpointError' do
          req = double('request', endpoint: 'https://example.com')
          context = double('ctx', http_request: req)
          error = Errors::NoSuchEndpointError.new(context: context)
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
      end

    end
  end
end
