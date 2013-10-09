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

        describe '#client_error?' do

          it 'returns true if the error is a 400 level error' do
            error = Aws::EC2::Errors::RandomError.new
            expect(inspector(error, 400).client_error?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = Aws::EC2::Errors::RandomError.new
            expect(inspector(error, 500).client_error?).to be(false)
          end

        end

        describe '#server_error?' do

          it 'returns true if the error is a 500 level error' do
            error = Aws::EC2::Errors::RandomError.new
            expect(inspector(error, 500).server_error?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = Aws::EC2::Errors::RandomError.new
            expect(inspector(error, 404).server_error?).to be(false)
          end

        end

        describe '#networking_error?' do

          it 'returns true if the http status code is 0' do
            error = double('error')
            expect(inspector(error, 0).networking_error?).to be(true)
          end

          it 'returns false if the http status code is not 0' do
            error = double('error')
            expect(inspector(error, 307).networking_error?).to be(false)
          end

        end

        describe '#expired_credentials?' do

          # aws query
          it 'returns true if the error code is InvalidClientTokenId' do
            error = Aws::IAM::Errors::InvalidClientTokenId.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          # json rpc
          it 'returns true if the error code is UnrecognizedClientException' do
            error = Aws::IAM::Errors::UnrecognizedClientException.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          # s3
          it 'returns true if the error code is InvalidAccessKeyId' do
            error = Aws::IAM::Errors::InvalidAccessKeyId.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          # ec2
          it 'returns true if the error code is AuthFailure' do
            error = Aws::IAM::Errors::AuthFailure.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true if the error code matches /expired/' do
            error = Aws::IAM::Errors::SomethingExpiredError.new
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns false for other errors' do
            error = Aws::IAM::Errors::SomeRandomError.new
            expect(inspector(error).expired_credentials?).to be(false)
          end

        end
      end
    end
  end
end
