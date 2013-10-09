require 'spec_helper'

module Aws
  module Plugins
    describe RetryErrors do

      it 'defaults config.max_retries to 3' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.max_retries).to eq(3)
      end

      describe 'ErrorInspector' do

        def inspector(error, http_status_code = 404)
          RetryErrors::ErrorInspector.new(error, http_status_code)
        end

        describe '#expired_credentials?' do

          it 'returns true if the error code is InvalidClientTokenId' do
            error = IAM::Errors::InvalidClientTokenId.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is UnrecognizedClientException' do
            error = SWF::Errors::UnrecognizedClientException.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is InvalidAccessKeyId' do
            error = S3::Errors::InvalidAccessKeyId.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code is AuthFailure' do
            error = EC2::Errors::AuthFailure.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code matches /expired/' do
            error = IAM::Errors::SomethingExpiredError.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns false for other errors' do
            error = IAM::Errors::SomeRandomError.new
            expect(inspector(error).expired_credentials?).to be(false)
          end

        end

        describe '#throttling_error?' do

          it 'returns true for Throttling' do
            error = IAM::Errors::Throttling.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ThrottlingException' do
            error = SWF::Errors::ThrottlingException.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestThrottled' do
            error = SQS::Errors::RequestThrottled.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ProvisionedThroughputExceededException' do
            error = DynamoDB::Errors::ProvisionedThroughputExceededException.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestLimitExceeded' do
            error = EC2::Errors::RequestLimitExceeded.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for BandwidthLimitExceeded' do
            error = CloudSearch::Errors::BandwidthLimitExceeded.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for error codes that match /throttl/' do
            error = IAM::Errors::Throttled.new
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns false for other errors' do
            error = IAM::Errors::SomeRandomError.new
            expect(inspector(error).throttling_error?).to be(false)
          end

        end

        describe '#checksum?' do

          it 'returns true if the error extends Errors::ChecksumError' do
            error = Errors::ChecksumError.new
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns true if the error is a crc32 error' do
            error = DynamoDB::Errors::CRC32CheckFailed.new
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns false if the error does not exend ChecksumError' do
            error = double('error')
            expect(inspector(error).checksum?).to be(false)
          end

        end

        describe '#server?' do

          it 'returns true if the error is a 500 level error' do
            error = EC2::Errors::RandomError.new
            expect(inspector(error, 500).server?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = EC2::Errors::RandomError.new
            expect(inspector(error, 404).server?).to be(false)
          end

        end

        describe '#networking?' do

          it 'returns true if the error code is RequestTimeout' do
            error = S3::Errors::RequestTimeout.new
            expect(inspector(error).networking?).to be(true)
          end

          it 'returns true if the http status code is 0' do
            error = double('error')
            expect(inspector(error, 0).networking?).to be(true)
          end

          it 'returns false if the http status code is not 0' do
            error = double('error')
            expect(inspector(error, 307).networking?).to be(false)
          end

        end
      end

      describe 'Handler' do

        def handle(&block)
          context = Seahorse::Client::RequestContext.new
          handler = RetryErrors::Handler.new(block)
          handler.call(context)
        end

        it 'returns the response directly if the response has no error' do
          resp = double('response', error: nil)
          expect(handle { |context| resp }).to be(resp)
        end

      end
    end
  end
end
