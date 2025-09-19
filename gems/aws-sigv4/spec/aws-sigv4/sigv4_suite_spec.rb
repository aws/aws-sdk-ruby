# frozen_string_literal: true

require_relative '../spec_helper'

require 'json'

module Aws
  module SigV4
    describe Signer do
      context 'sigv4 suite' do
        Dir.glob(File.expand_path('aws-signing-test-suite/v4/*', __dir__)).each do |path|
          describe(File.basename(path)) do
            let(:context) { JSON.load_file(File.join(path, 'context.json')) }

            let(:credentials) do
              Credentials.new(
                access_key_id: context.dig('credentials', 'access_key_id'),
                secret_access_key: context.dig('credentials', 'secret_access_key'),
                session_token: context.dig('credentials', 'token')
              )
            end

            let(:signer) do
              Signer.new(
                credentials: credentials,
                uri_escape_path: false, # already escaped when parsing the raw requests
                normalize_path: context['normalize'],
                region: context['region'],
                service: context['service'],
                apply_checksum_header: context['sign_body'],
                omit_session_token: context['omit_session_token'],
                signing_algorithm: 'sigv4'
              )
            end

            let(:request) do
              raw_request = File.read(File.join(path, 'request.txt'), encoding: 'utf-8')
              request = SpecHelper.parse_request(raw_request)
              request[:headers]['X-Amz-Date'] = Time.parse(context['timestamp']).utc.strftime('%Y%m%dT%H%M%SZ')
              request[:expires_in] = context['expiration_in_seconds']
              SpecHelper.debug("GIVEN REQUEST: |#{raw_request}|")
              SpecHelper.debug("PARSED REQUEST: |#{request.inspect}|")
              request
            end

            context 'header signing' do
              it 'computes the canonical request' do
                signature = signer.sign_request(request)
                expected = File.read(File.join(path, 'header-canonical-request.txt'), encoding: 'utf-8')
                computed = signature.canonical_request
                SpecHelper.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")
                SpecHelper.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
                expect(computed).to eq(expected)
              end

              it 'computes the signature' do
                signature = signer.sign_request(request)
                expected = File.read(File.join(path, 'header-signature.txt'), encoding: 'utf-8')
                computed = signature.signature
                SpecHelper.debug("EXPECTED AUTHORIZATION: |#{expected}|")
                SpecHelper.debug("COMPUTED AUTHORIZATION: |#{computed}|")
                expect(computed).to eq(expected)
              end

              it 'computes the signed request' do
                raw_request = File.read(File.join(path, 'header-signed-request.txt'), encoding: 'utf-8')
                expected = SpecHelper.parse_request(raw_request)
                expected_headers = SpecHelper.downcase_headers(expected[:headers])
                computed = signer.sign_request(request)
                SpecHelper.debug("EXPECTED SIGNED REQUEST: |#{expected_headers}|")
                SpecHelper.debug("COMPUTED SIGNED REQUEST: |#{computed.headers}|")
                expect(computed.headers).to eq(expected_headers)
              end

              it 'computes the string to sign' do
                signature = signer.sign_request(request)
                expected = File.read(File.join(path, 'header-string-to-sign.txt'), encoding: 'utf-8')
                computed = signature.string_to_sign
                SpecHelper.debug("EXPECTED STRING_TO_SIGN: |#{expected}|")
                SpecHelper.debug("COMPUTED STRING_TO_SIGN: |#{computed}|")
                expect(computed).to eq(expected)
              end
            end

            context 'query signing' do
              it 'computes the canonical request' do
                presigned_url = signer.presign_url(request)
                expected = File.read(File.join(path, 'query-canonical-request.txt'), encoding: 'utf-8')
                computed = presigned_url.canonical_request
                SpecHelper.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")
                SpecHelper.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
                expect(computed).to eq(expected)
              end

              it 'computes the signature' do
                presigned_url = signer.presign_url(request)
                expected = File.read(File.join(path, 'query-signature.txt'), encoding: 'utf-8')
                computed = presigned_url.signature
                SpecHelper.debug("EXPECTED AUTHORIZATION: |#{expected}|")
                SpecHelper.debug("COMPUTED AUTHORIZATION: |#{computed}|")
                expect(computed).to eq(expected)
              end

              it 'computes the signed request' do
                raw_request = File.read(File.join(path, 'query-signed-request.txt'), encoding: 'utf-8')
                expected = SpecHelper.parse_request(raw_request)
                computed = signer.presign_url(request)
                SpecHelper.debug("EXPECTED SIGNED REQUEST: |#{raw_request}|")
                SpecHelper.debug("COMPUTED SIGNED REQUEST: |#{computed.url}|")
                actual_query = SpecHelper.split_query_to_params(URI.parse(computed.url).query)
                expected_query = SpecHelper.split_query_to_params(URI.parse(expected[:url]).query)
                expect(actual_query.keys.sort).to eq(expected_query.keys.sort)
                expect(actual_query).to eq(expected_query)
                expected_headers = SpecHelper.downcase_headers(expected[:headers])
                expect(computed.headers).to eq(expected_headers)
              end

              it 'computes the string to sign' do
                presigned_url = signer.presign_url(request)
                expected = File.read(File.join(path, 'query-string-to-sign.txt'), encoding: 'utf-8')
                computed = presigned_url.string_to_sign
                SpecHelper.debug("EXPECTED STRING_TO_SIGN: |#{expected}|")
                SpecHelper.debug("COMPUTED STRING_TO_SIGN: |#{computed}|")
                expect(computed).to eq(expected)
              end
            end
          end
        end
      end
    end
  end
end
