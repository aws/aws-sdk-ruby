# frozen_string_literal: true

require_relative 'spec_helper'
require 'json'

module Aws
  module Sigv4
    describe Signer do
      let(:credentials) do
        Credentials.new(
          access_key_id: context['credentials']['access_key_id'],
          secret_access_key: context['credentials']['secret_access_key'],
          session_token: context['credentials']['token']
        )
      end

      let(:signer) do
        Signer.new(
          service: context['service'],
          region: context['region'],
          credentials: credentials,
          signing_algorithm: signing_algorithm,
          uri_escape_path: false,
          normalize_path: context['normalize'],
          apply_checksum_header: context['sign_body'],
          # most tests don't have this
          omit_session_token: context.fetch('omit_session_token', false)
        )
      end

      # Both signatures should verify but wont match
      # since ECCDA relies on a random k value
      def verify_signature(actual, expected, extra, sts_digest)
        ec = extra[:ec]
        expect(ec.dsa_verify_asn1(sts_digest, [actual].pack('H*'))).to be true
        expect(ec.dsa_verify_asn1(sts_digest, [expected].pack('H*'))).to be true
      end

      describe 'sigv4a spec suite' do
        let(:signing_algorithm) { :sigv4a }

        let(:extra) do
          extra = {}
          allow(Aws::Sigv4::AsymmetricCredentials)
            .to receive(:derive_asymmetric_key)
                  .and_wrap_original do |original, access_key_id, secret_access_key|
            ret = original.call(access_key_id, secret_access_key)
            ret[1].each{ |k,v| extra[k] = v}
            ret
          end
          signer.sign_request(request)
          extra
        end

        Dir.glob(File.expand_path('v4a/**', __dir__)).each do |path|
          # necessary basic test information
          next unless File.exist?(File.join(path, 'request.txt'))
          next unless File.exist?(File.join(path, 'context.json'))

          # Some tests don't have appropriate files. Skip (and notify).
          def skip_if_test_missing(path, file_name)
            return if File.exist?(File.join(path, file_name))

            skip "File #{file_name} is missing; skipping test."
          end

          describe(File.basename(path)) do
            # The Signer params (as a context JSON)
            let(:context) do
              ::JSON.parse(File.read(File.join(path, 'context.json')))
            end

            # The request to sign
            let(:request) do
              raw_request = File.read(
                File.join(path, 'request.txt'),
                encoding: 'utf-8'
              )
              SpecHelper.debug("GIVEN REQUEST: |#{raw_request}|")
              request = SpecHelper.parse_request(raw_request)

              # add request time
              request[:headers]['x-amz-date'] = request_time.utc.strftime('%Y%m%dT%H%M%SZ')
              SpecHelper.debug("PARSED REQUEST: #{request.inspect}")
              request
            end

            let(:request_time) do
              Time.parse(context['timestamp']) if context['timestamp']
            end

            context 'header' do
              # CRT does not provide canonical request
              unless Signer.use_crt?
                it 'verifies canonical request' do
                  skip_if_test_missing(path, 'header-canonical-request.txt')

                  signature = signer.sign_request(request)

                  computed = signature.canonical_request
                  SpecHelper.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
                  expected = File.read(
                    File.join(path, 'header-canonical-request.txt'),
                    encoding: 'utf-8'
                  )
                  SpecHelper.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")

                  expect(computed).to eq(expected)
                end
              end

              # CRT does not provide signature or pk
              unless Signer.use_crt?
                it 'computes the public key' do
                  skip_if_test_missing(path, 'public-key.json')
                  expected_pk = JSON.parse(File.read(File.join(path, 'public-key.json')))

                  expect(extra[:pk_x].to_s(16)).to eq expected_pk['X']
                  expect(extra[:pk_y].to_s(16)).to eq expected_pk['Y']
                end

                it 'verifies signature' do
                  skip_if_test_missing(path, 'header-signature.txt')

                  signature = signer.sign_request(request)

                  computed = signature.signature
                  SpecHelper.debug("COMPUTED SIGNATURE: |#{computed}|")
                  expected = File.read(
                    File.join(path, 'header-signature.txt'),
                    encoding: 'utf-8'
                  )
                  SpecHelper.debug("EXPECTED SIGNATURE: |#{expected}|")

                  sts_digest = OpenSSL::Digest::SHA256.digest(signature.string_to_sign)
                  verify_signature(computed, expected, extra, sts_digest)
                end
              end

              it 'verifies signed request' do
                skip_if_test_missing(path, 'header-signed-request.txt')

                signature = signer.sign_request(request)

                # For this test, we only care to check headers
                # since Signer does not modify a request object.
                computed = signature.headers
                # Merge in test request headers (downcased) because computed
                # headers will only include sigv4 headers.
                computed = computed.merge(
                  SpecHelper.downcase_headers(request[:headers])
                )
                SpecHelper.debug("COMPUTED HEADERS: |#{computed}|")
                expected_request = File.read(
                  File.join(path, 'header-signed-request.txt'),
                  encoding: 'utf-8'
                )
                expected = SpecHelper.parse_request(expected_request)[:headers]
                expected = SpecHelper.downcase_headers(expected)
                SpecHelper.debug("EXPECTED HEADERS: |#{expected}|")

                expected.each do |k, v|
                  if k == 'authorization'
                    expected_parts = v.split
                    actual_parts = computed['authorization'].split
                    expected_parts.zip(actual_parts).each do |e, a|
                      # SigV4A signatures are non-deterministic, so do not
                      # compare them!
                      expect(a).to eq(e) unless e.start_with?('Signature')
                    end
                  else
                    expect(computed[k]).to eq(v)
                  end
                end
              end

              # CRT does not provide string to sign
              unless Signer.use_crt?
                it 'verifies string to sign' do
                  skip_if_test_missing(path, 'header-string-to-sign.txt')

                  signature = signer.sign_request(request)

                  computed = signature.string_to_sign
                  SpecHelper.debug("COMPUTED STRING TO SIGN: |#{computed}|")
                  expected = File.read(
                    File.join(path, 'header-string-to-sign.txt'),
                    encoding: 'utf-8'
                  )
                  SpecHelper.debug("EXPECTED STRING TO SIGN: |#{expected}|")

                  expect(computed).to eq(expected)
                end
              end
            end

            context 'query' do
              # CRT does not provide canonical request

              # CRT does not provide signature

              it 'verifies signed request' do
                skip_if_test_missing(path, 'query-signed-request.txt')

                request[:headers].delete('x-amz-date')
                request[:time] = request_time
                if context['expiration_in_seconds']
                  request[:expires_in] = context['expiration_in_seconds']
                end

                presigned_url = signer.presign_url(request)

                # Validate the pre-signed url by splitting into parts
                # because query ordering is non-deterministic.
                computed_query = presigned_url.query
                computed = SpecHelper.split_query_to_params(computed_query)
                SpecHelper.debug("COMPUTED URL: |#{presigned_url}|")
                expected_request = File.read(
                  File.join(path, 'query-signed-request.txt'),
                  encoding: 'utf-8'
                )
                expected_url = SpecHelper.parse_request(expected_request)[:url]
                SpecHelper.debug("EXPECTED URL: |#{expected_url}|")
                expected_query = URI(expected_url).query
                expected = SpecHelper.split_query_to_params(expected_query)

                expected.each do |k, v|
                  expect(computed).to include(k)
                  # SigV4 signatures are non-deterministic, so do not
                  # compare them!
                  expect(computed[k]).to eq(CGI.unescape(v)) unless k == 'X-Amz-Signature'
                end
              end

              # CRT does not provide string to sign
            end
          end
        end
      end
    end
  end
end


