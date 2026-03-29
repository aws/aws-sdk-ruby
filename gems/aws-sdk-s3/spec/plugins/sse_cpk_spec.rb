# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Plugins
      describe 'SseCpk' do
        let(:creds) { Aws::Credentials.new('akid', 'secret') }
        let(:key) { 'a' * 32 }

        def client(opts = {})
          S3::Client.new(
            { region: 'us-east-1', credentials: creds, stub_responses: true }.merge(opts)
          )
        end

        describe 'require_https_for_sse_cpk' do
          it 'defaults to true' do
            expect(client.config.require_https_for_sse_cpk).to be true
          end

          it 'can be set to false' do
            expect(client(require_https_for_sse_cpk: false).config.require_https_for_sse_cpk).to be false
          end
        end

        describe 'HTTPS enforcement' do
          it 'raises when sse_customer_key is used over HTTP by default' do
            c = S3::Client.new(
              region: 'us-east-1',
              credentials: creds,
              endpoint: 'http://localhost:9000',
              force_path_style: true,
              stub_responses: true
            )
            expect do
              c.put_object(bucket: 'my-bucket', key: 'my-key', body: 'data',
                           sse_customer_algorithm: 'AES256', sse_customer_key: key)
            end.to raise_error(ArgumentError, /HTTPS/)
          end

          it 'raises when copy_source_sse_customer_key is used over HTTP by default' do
            c = S3::Client.new(
              region: 'us-east-1',
              credentials: creds,
              endpoint: 'http://localhost:9000',
              force_path_style: true,
              stub_responses: true
            )
            expect do
              c.copy_object(
                bucket: 'dst-bucket', key: 'dst-key',
                copy_source: 'src-bucket/src-key',
                copy_source_sse_customer_algorithm: 'AES256',
                copy_source_sse_customer_key: key
              )
            end.to raise_error(ArgumentError, /HTTPS/)
          end

          it 'does not raise when sse_customer_key is used over HTTPS' do
            c = S3::Client.new(
              region: 'us-east-1',
              credentials: creds,
              stub_responses: true
            )
            expect do
              c.put_object(bucket: 'my-bucket', key: 'my-key', body: 'data',
                           sse_customer_algorithm: 'AES256', sse_customer_key: key)
            end.not_to raise_error
          end

          it 'does not raise when require_https_for_sse_cpk is false and endpoint is HTTP' do
            c = S3::Client.new(
              region: 'us-east-1',
              credentials: creds,
              endpoint: 'http://localhost:9000',
              force_path_style: true,
              require_https_for_sse_cpk: false,
              stub_responses: true
            )
            expect do
              c.put_object(bucket: 'my-bucket', key: 'my-key', body: 'data',
                           sse_customer_algorithm: 'AES256', sse_customer_key: key)
            end.not_to raise_error
          end

          it 'does not raise when require_https_for_sse_cpk is false for copy_source_sse_customer_key over HTTP' do
            c = S3::Client.new(
              region: 'us-east-1',
              credentials: creds,
              endpoint: 'http://localhost:9000',
              force_path_style: true,
              require_https_for_sse_cpk: false,
              stub_responses: true
            )
            expect do
              c.copy_object(
                bucket: 'dst-bucket', key: 'dst-key',
                copy_source: 'src-bucket/src-key',
                copy_source_sse_customer_algorithm: 'AES256',
                copy_source_sse_customer_key: key
              )
            end.not_to raise_error
          end
        end

        describe 'key encoding' do
          it 'base64-encodes sse_customer_key and sets md5' do
            c = client
            resp = c.put_object(bucket: 'my-bucket', key: 'my-key', body: 'data',
                                sse_customer_algorithm: 'AES256', sse_customer_key: key)
            req_params = resp.context.params
            expect(req_params[:sse_customer_key]).to eq(Base64.encode64(key).strip)
            expect(req_params[:sse_customer_key_md5]).to eq(
              Base64.encode64(OpenSSL::Digest::MD5.digest(key)).strip
            )
          end

          it 'base64-encodes copy_source_sse_customer_key and sets md5' do
            c = client
            resp = c.copy_object(
              bucket: 'dst-bucket', key: 'dst-key',
              copy_source: 'src-bucket/src-key',
              copy_source_sse_customer_algorithm: 'AES256',
              copy_source_sse_customer_key: key
            )
            req_params = resp.context.params
            expect(req_params[:copy_source_sse_customer_key]).to eq(Base64.encode64(key).strip)
            expect(req_params[:copy_source_sse_customer_key_md5]).to eq(
              Base64.encode64(OpenSSL::Digest::MD5.digest(key)).strip
            )
          end
        end
      end
    end
  end
end
