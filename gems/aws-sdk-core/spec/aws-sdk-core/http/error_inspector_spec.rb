# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Http
      describe ErrorInspector do
        let(:context) { Smithy::Client::HandlerContext.new }
        let(:data) { Smithy::Schema::EmptyStructure.new }
        let(:http_response) { Smithy::Client::Http::Response.new(status_code: status_code) }
        let(:status_code) { 404 }

        def inspector(error, http_resp = http_response)
          ErrorInspector.new(error, http_resp)
        end

        def service_error_class(code, retryable: false, throttling: false)
          Class.new(Smithy::Client::ServiceError) do
            self.code = code
            define_method(:retryable?) { retryable }
            define_method(:throttling?) { throttling }
          end
        end

        def service_error(code, retryable: false, throttling: false)
          service_error_class(code, retryable: retryable, throttling: throttling).new(context, data)
        end

        describe '#expired_creds?' do
          %w[
            UnrecognizedClientException
            InvalidClientTokenId
            InvalidAccessKeyId
            AuthFailure
            InvalidIdentityToken
            ExpiredToken
            ExpiredTokenException
          ].each do |code|
            it "returns true for #{code}" do
              expect(inspector(service_error(code)).expired_creds?).to be true
            end
          end

          it 'returns true for error codes matching /expired/i' do
            expect(inspector(service_error('SomethingExpiredError')).expired_creds?).to be true
          end

          it 'returns false for other errors' do
            expect(inspector(service_error('SomeRandomError')).expired_creds?).to be false
          end
        end

        describe '#throttling?' do
          %w[
            Throttling
            ThrottlingException
            ThrottledException
            RequestThrottled
            RequestThrottledException
            ProvisionedThroughputExceededException
            TransactionInProgressException
            RequestLimitExceeded
            BandwidthLimitExceeded
            LimitExceededException
            TooManyRequestsException
            PriorRequestNotComplete
            SlowDown
            EC2ThrottledException
          ].each do |code|
            it "returns true for #{code}" do
              expect(inspector(service_error(code)).send(:throttling?)).to be true
            end
          end

          it 'returns true for error codes matching /throttl/i' do
            expect(inspector(service_error('CustomThrottled')).send(:throttling?)).to be true
          end

          it 'returns true for status code 429' do
            resp = Smithy::Client::Http::Response.new(status_code: 429)
            expect(inspector(service_error('SomeRandomError'), resp).send(:throttling?)).to be true
          end

          it 'returns true for modeled throttling errors' do
            error = service_error('ModeledThrottle', retryable: true, throttling: true)
            expect(inspector(error).send(:throttling?)).to be true
          end

          it 'returns false for other errors' do
            expect(inspector(service_error('SomeRandomError')).send(:throttling?)).to be false
          end
        end

        describe '#transient?' do
          %w[
            RequestTimeout
            InternalError
            RequestTimeoutException
            IDPCommunicationError
          ].each do |code|
            it "returns true for #{code}" do
              expect(inspector(service_error(code)).send(:transient?)).to be true
            end
          end

          it 'returns true for NetworkingError' do
            error = Smithy::Client::NetworkingError.new(StandardError.new('oops'))
            expect(inspector(error).send(:transient?)).to be true
          end

          it 'returns false for other errors' do
            expect(inspector(service_error('SomeRandomError')).send(:transient?)).to be false
          end
        end

        describe '#server?' do
          it 'returns true for 500-level status codes' do
            resp = Smithy::Client::Http::Response.new(status_code: 500)
            expect(inspector(service_error('Error'), resp).send(:server?)).to be true
          end

          it 'returns true for 503' do
            resp = Smithy::Client::Http::Response.new(status_code: 503)
            expect(inspector(service_error('Error'), resp).send(:server?)).to be true
          end

          it 'returns false for non-500-level status codes' do
            expect(inspector(service_error('Error')).send(:server?)).to be false
          end
        end

        describe '#client?' do
          it 'returns true for 400-level status codes' do
            resp = Smithy::Client::Http::Response.new(status_code: 400)
            expect(inspector(service_error('Error'), resp).send(:client?)).to be true
          end

          it 'returns false for non-400-level status codes' do
            resp = Smithy::Client::Http::Response.new(status_code: 500)
            expect(inspector(service_error('Error'), resp).send(:client?)).to be false
          end
        end

        describe '#retryable?' do
          { 429 => 'Throttling', 503 => 'ServerError' }.each do |status, type|
            it "uses status #{status} to classify an ordinary callback failure" do
              http_response.signal_headers(status, {})
              http_response.on_done { raise 'callback failed' }
              http_response.signal_done
              expect(inspector(http_response.error).retryable?).to be(true)
              expect(inspector(http_response.error).error_type).to eq(type)
            end
          end

          it 'classifies an existing NetworkingError from a callback as transient' do
            error = Smithy::Client::NetworkingError.new(IOError.new('nested request failed'))
            http_response.signal_headers(200, {})
            http_response.on_done { raise error }
            http_response.signal_done
            expect(http_response.error).to be(error)
            expect(inspector(http_response.error).retryable?).to be(true)
            expect(inspector(http_response.error).error_type).to eq('Transient')
          end

          it 'uses the normal credential classification for an error raised by a callback' do
            error = service_error('ExpiredToken')
            http_response.on_done { raise error }
            http_response.signal_done
            expect(inspector(http_response.error).expired_creds?).to be(true)
          end

          it 'returns false for basic client errors' do
            expect(inspector(service_error('NotFound')).retryable?).to be false
          end

          it 'returns true for server errors' do
            resp = Smithy::Client::Http::Response.new(status_code: 500)
            expect(inspector(service_error('InternalServerError'), resp).retryable?).to be true
          end

          it 'returns true for throttling errors' do
            expect(inspector(service_error('Throttling')).retryable?).to be true
          end

          it 'returns true for transient errors' do
            error = Smithy::Client::NetworkingError.new(StandardError.new)
            expect(inspector(error).retryable?).to be true
          end

          it 'returns true for expired credentials' do
            expect(inspector(service_error('ExpiredToken')).retryable?).to be true
          end

          it 'returns true for modeled retryable errors' do
            error = service_error('ModeledRetryable', retryable: true)
            expect(inspector(error).retryable?).to be true
          end

          it 'returns false when response body is not truncatable' do
            resp = Smithy::Client::Http::Response.new(status_code: 500)
            resp.body = IO.new(IO.sysopen(File::NULL, 'w'), 'w')
            expect(inspector(service_error('Error'), resp).retryable?).to be false
          end
        end

        describe '#error_type' do
          it 'returns ExpiredCreds for expired credential errors' do
            expect(inspector(service_error('ExpiredToken')).error_type).to eq 'ExpiredCreds'
          end

          it 'returns Transient for networking errors' do
            error = Smithy::Client::NetworkingError.new(StandardError.new)
            expect(inspector(error).error_type).to eq 'Transient'
          end

          it 'returns Transient for network error codes' do
            expect(inspector(service_error('RequestTimeout')).error_type).to eq 'Transient'
          end

          it 'returns Throttling for throttling errors' do
            expect(inspector(service_error('Throttling')).error_type).to eq 'Throttling'
          end

          it 'returns Throttling for 429 status' do
            resp = Smithy::Client::Http::Response.new(status_code: 429)
            expect(inspector(service_error('SomeError'), resp).error_type).to eq 'Throttling'
          end

          it 'returns ServerError for 500-level status' do
            resp = Smithy::Client::Http::Response.new(status_code: 502)
            expect(inspector(service_error('BadGateway'), resp).error_type).to eq 'ServerError'
          end

          it 'returns ClientError for 400-level status' do
            expect(inspector(service_error('NotFound')).error_type).to eq 'ClientError'
          end

          it 'returns Unknown for other status codes' do
            resp = Smithy::Client::Http::Response.new(status_code: 307)
            expect(inspector(service_error('Redirect'), resp).error_type).to eq 'Unknown'
          end
        end

        describe '#hints' do
          it 'returns x-amz-retry-after in seconds from ms header' do
            http_response.headers['x-amz-retry-after'] = '1500'
            expect(inspector(service_error('Error')).hints[:x_amz_retry_after]).to eq 1.5
          end

          it 'returns nil for invalid x-amz-retry-after' do
            http_response.headers['x-amz-retry-after'] = 'invalid'
            expect(inspector(service_error('Error')).hints.key?(:x_amz_retry_after)).to be false
          end

          it 'returns empty hints when header is absent' do
            expect(inspector(service_error('Error')).hints).to eq({})
          end
        end
      end
    end
  end
end
