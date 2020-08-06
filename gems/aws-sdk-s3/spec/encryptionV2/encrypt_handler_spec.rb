require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV2
      describe EncryptHandler do

        before do
          if RUBY_VERSION.match(/1.9/)
            skip('authenticated encryption not supported by OpenSSL in Ruby version ~> 1.9')
          end
        end

        let(:next_handler) { double(call: nil) }
        let(:handler) { EncryptHandler.new(next_handler) }

        let(:cipher) { double('cipher', update: '', final: '', auth_tag: '') }
        let(:envelope) { {'x-amz-key-v2' => 'env-key'} }
        let(:cipher_provider) { double('cipher_provider', encryption_cipher: [envelope, cipher]) }
        let(:context_enc) { { cipher_provider: cipher_provider, envelope_location: :metadata } }
        let(:params) { {bucket: 'bucket', key: 'key'} }
        let(:client) { double('client') }
        let(:http_response) { double(on_headers: nil) }
        let(:config) { Struct.new(:user_agent_suffix).new }
        let(:context) { double(params: params, client: client, :[] => context_enc, http_response: http_response, config: config ) }
        describe '#call' do

          context 'when envelope_location is :metadata' do
            it 'sets the envelope on metadata' do
              handler.call(context)
              expect(params[:metadata]).to include('x-amz-key-v2')
            end
          end

          context 'when envelope_location is :instruction_file' do
            it 'puts the envelope to the bucket' do
              context_enc.merge!(envelope_location: :instruction_file, instruction_file_suffix: '.instruction')
              expect(client).to receive(:put_object).with(
                bucket: 'bucket', key: 'key.instruction',
                body: Json.dump(envelope))
              handler.call(context)
            end
          end

          it 'raises an error if content_md5 is set' do
            params[:content_md5] = 'md5'
            expect do
              handler.call(context)
            end.to raise_exception(ArgumentError)
          end

          it 'adds unencrypted-content-length to metadata' do
            handler.call(context)
            expect(params[:metadata]).to include('x-amz-key-v2')
          end

          it 'adds a user_agent_suffix' do
            handler.call(context)
            expect(config.user_agent_suffix).to include('S3CryptoV2')
          end

          it 'sets the body to the IOEncrypter and calls close on_headers' do
            encrypter = double()
            expect(IOEncrypter).to receive(:new).with(cipher, kind_of(StringIO)).and_return(encrypter)
            expect(http_response).to receive(:on_headers) { |&block| block.call }
            expect(encrypter).to receive(:close)
            handler.call(context)
          end

          it 'calls the next handler in the stack' do
            expect(next_handler).to receive(:call).with(context)
            handler.call(context)
          end

        end
      end
    end
  end
end