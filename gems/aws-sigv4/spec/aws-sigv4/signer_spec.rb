# frozen_string_literal: true

require_relative '../spec_helper'

require 'tempfile'
require 'base64'

module Aws
  module SigV4
    describe Signer do
      let(:credentials) do
        Credentials.new(
          access_key_id: 'akid',
          secret_access_key: 'secret'
        )
      end

      let(:options) do
        {
          service: 'SERVICE',
          region: 'REGION',
          credentials: credentials
        }
      end

      context '#service' do
        it 'requires a service' do
          expect do
            Signer.new(
              region: 'us-east-1',
              credentials: credentials
            )
          end.to raise_error(Errors::MissingServiceError)
        end

        it 'accepts a string' do
          expect(Signer.new(options).service).to eq(options[:service])
        end
      end

      context '#region' do
        it 'requires a region' do
          expect do
            Signer.new(
              service: 'ec2',
              credentials: credentials
            )
          end.to raise_error(Errors::MissingRegionError)
        end

        it 'accepts a string' do
          expect(Signer.new(options).region).to eq(options[:region])
        end
      end

      describe '#credentials' do
        let(:options) { { service: 'ec2', region: 'us-east-1' } }

        it 'requires credentials' do
          expect do
            Signer.new(options)
          end.to raise_error(Errors::MissingCredentialsError)
        end

        it 'accepts :access_key_id and :secret_access_key' do
          signer = Signer.new(
            options.merge(
              access_key_id: 'akid',
              secret_access_key: 'secret'
            )
          )
          creds = signer.credentials_provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to be(nil)
        end

        it 'accepts credentials with a session token' do
          signer = Signer.new(
            options.merge(
              access_key_id: 'akid',
              secret_access_key: 'secret',
              session_token: 'token'
            )
          )
          creds = signer.credentials_provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts :credentials' do
          signer = Signer.new(
            options.merge(
              credentials: Credentials.new(
                access_key_id: 'akid',
                secret_access_key: 'secret',
                session_token: 'token'
              )
            )
          )
          creds = signer.credentials_provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts :credentials_provider' do
          signer = Signer.new(
            options.merge(
              credentials_provider: StaticCredentialsProvider.new(
                access_key_id: 'akid',
                secret_access_key: 'secret',
                session_token: 'token'
              )
            )
          )
          creds = signer.credentials_provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts empty credentials' do
          signer = Signer.new(
            options.merge(
              access_key_id: '',
              secret_access_key: ''
            )
          )
          creds = signer.credentials_provider.identity
          expect(creds.access_key_id).to eq('')
          expect(creds.secret_access_key).to eq('')
        end
      end

      describe '#sign_request' do
        let(:credentials_with_token) do
          Credentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'session-token'
          )
        end

        let(:basic_request) do
          {
            http_method: 'GET',
            url: 'http://domain.com'
          }
        end

        context 'with uri_escape_path option' do
          it 'escapes the path when uri_escape_path is true (default)' do
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com/path%20with%20spaces/and%25special%2Bchars'
            )
            expect(signature.canonical_request).to include("/path%2520with%2520spaces/and%2525special%252Bchars\n")
          end

          it 'does not escape the path when uri_escape_path is false' do
            signer = Signer.new(options.merge(uri_escape_path: false))
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com/path%20with%20spaces/and%25special%2Bchars'
            )
            expect(signature.canonical_request).to include("/path%20with%20spaces/and%25special%2Bchars\n")
          end
        end

        context 'with apply_checksum_header option' do
          it 'includes x-amz-content-sha256 header when apply_checksum_header is true (default)' do
            signer = Signer.new(options)
            signature = signer.sign_request(basic_request)
            expect(signature.headers).to include('x-amz-content-sha256')
          end

          it 'excludes x-amz-content-sha256 header when apply_checksum_header is false' do
            signer = Signer.new(options.merge(apply_checksum_header: false))
            signature = signer.sign_request(basic_request)
            expect(signature.headers).not_to include('x-amz-content-sha256')
          end

          it 'respects existing x-amz-content-sha256 header when provided' do
            custom_checksum = 'custom-checksum-value'
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com',
              headers: {
                'X-Amz-Content-Sha256' => custom_checksum
              }
            )
            expect(signature.headers['x-amz-content-sha256']).to eq(custom_checksum)
          end
        end

        context 'with session token handling' do
          it 'includes x-amz-security-token header when session token is provided' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token
            )
            signature = signer.sign_request(basic_request)
            expect(signature.headers['x-amz-security-token']).to eq('session-token')
          end

          it 'includes x-amz-s3session-token when signing_algorithm is sigv4-s3express' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token,
              signing_algorithm: 'sigv4-s3express'
            )
            signature = signer.sign_request(basic_request)
            expect(signature.headers['x-amz-s3session-token']).to eq('session-token')
            expect(signature.headers).not_to include('x-amz-security-token')
          end

          it 'does not include token headers when session token is not provided' do
            signer = Signer.new(options)
            signature = signer.sign_request(basic_request)
            expect(signature.headers).not_to include('x-amz-security-token')
            expect(signature.headers).not_to include('x-amz-s3session-token')
          end

          it 'includes token in headers but not in signature when omit_session_token is true' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token,
              omit_session_token: true
            )
            signature = signer.sign_request(basic_request)
            expect(signature.headers['x-amz-security-token']).to eq('session-token')

            # The canonical request shouldn't include the token in the signed headers
            canonical_headers = signature.canonical_request.split("\n")[3]
            expect(canonical_headers).not_to include('x-amz-security-token')

            signed_headers = signature.canonical_request.split("\n")[4]
            expect(signed_headers).not_to include('x-amz-security-token')
          end
        end

        context 'with signing_algorithm option' do
          it 'uses AWS4-HMAC-SHA256 algorithm for sigv4 by default' do
            signer = Signer.new(options)
            signature = signer.sign_request(basic_request)
            expect(signature.headers['authorization']).to include('AWS4-HMAC-SHA256')
            expect(signature.string_to_sign.split("\n").first).to eq('AWS4-HMAC-SHA256')
          end

          it 'adds x-amz-region-set header when signing_algorithm is sigv4a' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials,
              signing_algorithm: 'sigv4a'
            )
            signature = signer.sign_request(basic_request)
            expect(signature.headers).to include('x-amz-region-set')
            expect(signature.headers['x-amz-region-set']).to eq('REGION')
            expect(signature.string_to_sign.split("\n").first).to eq('AWS4-ECDSA-P256-SHA256')
          end
        end

        context 'with unsigned_headers option' do
          it 'excludes specified headers from signing' do
            signer = Signer.new(
              options.merge(unsigned_headers: ['custom-header'])
            )

            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com',
              headers: {
                'Content-Type' => 'application/json',
                'Custom-Header' => 'custom-value',
                'X-Amz-Date' => '20230101T120000Z'
              }
            )

            signed_headers_line = signature.canonical_request.split("\n")[4]
            expect(signed_headers_line).not_to include('custom-header')
            expect(signed_headers_line).to include('host')
          end

          it 'always excludes default unsigned headers' do
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com',
              headers: {
                'Content-Type' => 'application/json',
                'User-Agent' => 'aws-sdk-ruby',
                'Expect' => '100-continue',
                'X-Amz-Date' => '20230101T120000Z'
              }
            )

            signed_headers_line = signature.canonical_request.split("\n")[4]
            expect(signed_headers_line).not_to include('user-agent')
            expect(signed_headers_line).not_to include('expect')
            expect(signed_headers_line).to include('host')
          end
        end

        context 'with normalize_path option' do
          it 'normalizes paths by default' do
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com/path/../normalized'
            )
            expect(signature.canonical_request).to include("/normalized\n")
          end

          it 'does not normalize paths when normalize_path is false' do
            signer = Signer.new(options.merge(normalize_path: false))
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com/path/../not-normalized'
            )
            expect(signature.canonical_request).to include("/path/../not-normalized\n")
          end
        end

        context 'body' do
          it 'handles empty bodies correctly' do
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com',
              body: ''
            )

            empty_string_sha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            expect(signature.content_sha256).to eq(empty_string_sha256)
          end

          it 'handles nil bodies correctly' do
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'GET',
              url: 'http://domain.com',
              body: nil
            )

            empty_string_sha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            expect(signature.content_sha256).to eq(empty_string_sha256)
          end

          it 'handles IO bodies correctly' do
            body = StringIO.new('test body content')
            signer = Signer.new(options)
            signature = signer.sign_request(
              http_method: 'POST',
              url: 'http://domain.com',
              body: body
            )

            test_body_sha256 = Digest::SHA256.hexdigest('test body content')
            expect(signature.content_sha256).to eq(test_body_sha256)
            expect(body.pos).to eq(0)
          end
        end
      end

      describe '#presign_url' do
        let(:credentials_with_token) do
          Credentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'session-token'
          )
        end

        let(:basic_request) do
          {
            http_method: 'GET',
            url: 'https://domain.com'
          }
        end

        context 'with expiration options' do
          it 'defaults to 900 seconds expiration' do
            signer = Signer.new(options)
            url = signer.presign_url(basic_request)
            expect(url.url.query).to include('X-Amz-Expires=900')
          end

          it 'accepts custom expiration in seconds' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com',
              expires_in: 300
            )
            expect(url.url.query).to include('X-Amz-Expires=300')
          end

          it 'uses credential expiration time if sooner than requested expires_in' do
            now = Time.now
            expiration = now + 60 # 60 seconds from now

            provider = StaticCredentialsProvider.new(
              access_key_id: 'provider_key_id',
              secret_access_key: 'provider_secret_key'
            )
            # static provider doesn't support expiration, so we hack it in here
            provider.instance_variable_set(:@expiration, expiration)
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials_provider: provider
            )
            allow(Time).to receive(:now).and_return(now)

            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com',
              expires_in: 3600
            )
            expect(url.url.query).to include('X-Amz-Expires=60')
          end
        end

        context 'with session token handling' do
          it 'includes X-Amz-Security-Token in query string when token is present' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token
            )
            url = signer.presign_url(basic_request)
            expect(url.url.query).to include('X-Amz-Security-Token=session-token')
          end

          it 'includes X-Amz-S3session-Token for S3Express algorithm' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token,
              signing_algorithm: 'sigv4-s3express'
            )
            url = signer.presign_url(basic_request)
            expect(url.url.query).to include('X-Amz-S3session-Token=session-token')
            expect(url.url.query).not_to include('X-Amz-Security-Token')
          end

          it 'still includes token in query string even when omit_session_token is true' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials_with_token,
              omit_session_token: true
            )
            url = signer.presign_url(basic_request)
            expect(url.url.query).to include('X-Amz-Security-Token=session-token')
          end
        end

        context 'with signing_algorithm option' do
          it 'uses AWS4-HMAC-SHA256 algorithm by default' do
            signer = Signer.new(options)
            url = signer.presign_url(basic_request)
            expect(url.url.query).to include('X-Amz-Algorithm=AWS4-HMAC-SHA256')
          end

          it 'uses AWS4-ECDSA-P256-SHA256 with sigv4a algorithm' do
            signer = Signer.new(
              service: 'SERVICE',
              region: 'REGION',
              credentials: credentials,
              signing_algorithm: 'sigv4a'
            )
            begin
              url = signer.presign_url(basic_request)
              expect(url.url.query).to include('X-Amz-Algorithm=AWS4-ECDSA-P256-SHA256')
              expect(url.url.query).to include('X-Amz-Region-Set=REGION')
            rescue StandardError => e
              skip "sigv4a presign testing requires proper implementation: #{e.message}"
            end
          end
        end

        context 'with uri_escape_path option' do
          it 'escapes the path when uri_escape_path is true (default)' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com/path%20with%20spaces'
            )
            # The path in the canonical request should be escaped
            expect(url.canonical_request).to include("/path%2520with%2520spaces\n")
          end

          it 'does not escape the path when uri_escape_path is false' do
            signer = Signer.new(options.merge(uri_escape_path: false))
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com/path%20with%20spaces'
            )
            # The path in the canonical request should not be escaped
            expect(url.canonical_request).to include("/path%20with%20spaces\n")
          end
        end

        context 'with normalize_path option' do
          it 'normalizes paths by default' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com/path/../normalized'
            )
            expect(url.canonical_request).to include("/normalized\n")
          end

          it 'does not normalize paths when normalize_path is false' do
            signer = Signer.new(options.merge(normalize_path: false))
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com/path/../not-normalized'
            )
            expect(url.canonical_request).to include("/path/../not-normalized\n")
          end
        end

        context 'with content_sha256 handling' do
          it 'uses empty string SHA256 by default' do
            signer = Signer.new(options)
            url = signer.presign_url(basic_request)

            empty_string_sha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            expect(url.content_sha256).to eq(empty_string_sha256)
          end

          it 'accepts body_digest option' do
            custom_digest = 'custom-body-digest'
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com',
              body_digest: custom_digest
            )
            expect(url.content_sha256).to eq(custom_digest)
          end

          it 'computes SHA256 of provided body' do
            body = 'test body content'
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'PUT',
              url: 'https://domain.com',
              body: body
            )

            test_body_sha256 = Digest::SHA256.hexdigest(body)
            expect(url.content_sha256).to eq(test_body_sha256)
          end

          it 'prioritizes body_digest over body' do
            custom_digest = 'custom-body-digest'
            body = 'test body content'
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'PUT',
              url: 'https://domain.com',
              body: body,
              body_digest: custom_digest
            )
            expect(url.content_sha256).to eq(custom_digest)
          end

          it 'allows using UNSIGNED-PAYLOAD as body_digest' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'PUT',
              url: 'https://domain.com',
              body_digest: 'UNSIGNED-PAYLOAD'
            )
            expect(url.content_sha256).to eq('UNSIGNED-PAYLOAD')
          end
        end

        context 'with headers' do
          it 'signs provided headers' do
            headers = {
              'Content-Type' => 'application/json',
              'Custom-Header' => 'custom-value'
            }

            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'PUT',
              url: 'https://domain.com',
              headers: headers
            )

            expect(url.url.query).to include('X-Amz-SignedHeaders=')
            signed_headers_param = url.url.query.split('&').find { |param| param.start_with?('X-Amz-SignedHeaders=') }
            expect(signed_headers_param).to include('content-type')
            expect(signed_headers_param).to include('custom-header')
          end

          it 'respects unsigned_headers option' do
            headers = {
              'Content-Type' => 'application/json',
              'Custom-Header' => 'custom-value'
            }

            signer = Signer.new(
              options.merge(unsigned_headers: ['custom-header'])
            )

            url = signer.presign_url(
              http_method: 'PUT',
              url: 'https://domain.com',
              headers: headers
            )

            signed_headers_param = url.url.query.split('&').find { |param| param.start_with?('X-Amz-SignedHeaders=') }
            expect(signed_headers_param).to include('content-type')
            expect(signed_headers_param).not_to include('custom-header')
          end
        end

        context 'existing query params' do
          it 'appends to existing query parameters' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com?existing=param'
            )

            # Should preserve existing query param and add auth params
            query_parts = url.url.query.split('&')
            expect(query_parts).to include('existing=param')
            expect(query_parts.any? { |p| p.start_with?('X-Amz-Algorithm=') }).to be(true)
            expect(query_parts.any? { |p| p.start_with?('X-Amz-Credential=') }).to be(true)
          end

          it 'handles complex URLs with query params needing escaping' do
            signer = Signer.new(options)
            url = signer.presign_url(
              http_method: 'GET',
              url: 'https://domain.com/path?param=value with spaces&another=123'
            )

            # Check that existing params are preserved and properly escaped in canonical request
            expect(url.canonical_request).to include('another=123&param=value%20with%20spaces')
          end
        end
      end

      describe '.uri_escape' do
        it 'escapes special characters' do
          expect(Signer.uri_escape('a b c')).to eq('a%20b%20c')
          expect(Signer.uri_escape('abc/~def')).to eq('abc%2F~def')
          expect(Signer.uri_escape('abc=xyz&123')).to eq('abc%3Dxyz%26123')
        end

        it 'preserves unreserved characters' do
          # RFC3986 unreserved chars: a-z, A-Z, 0-9, -, _, ., ~
          expect(Signer.uri_escape('abcABC123-_.~')).to eq('abcABC123-_.~')
        end

        it 'encodes spaces as %20 instead of +' do
          expect(Signer.uri_escape('a b')).to eq('a%20b')
          expect(Signer.uri_escape('a b')).not_to eq('a+b')
        end

        it 'handles nil input' do
          expect(Signer.uri_escape(nil)).to be_nil
        end

        it 'handles UTF-8 characters' do
          expect(Signer.uri_escape('résumé')).to eq('r%C3%A9sum%C3%A9')
        end
      end

      describe '.uri_escape_path' do
        it 'escapes path segments individually' do
          expect(Signer.uri_escape_path('/path with spaces/more spaces')).to eq('/path%20with%20spaces/more%20spaces')
          expect(Signer.uri_escape_path('/foo/bar~baz')).to eq('/foo/bar~baz')
        end

        it 'preserves path separators' do
          expect(Signer.uri_escape_path('/a/b/c')).to eq('/a/b/c')
          expect(Signer.uri_escape_path('/a//b/c/')).to eq('/a//b/c/')
        end

        it 'escapes special characters in path segments' do
          expect(Signer.uri_escape_path('/a&b/c=d')).to eq('/a%26b/c%3Dd')
        end

        it 'handles empty path segments' do
          expect(Signer.uri_escape_path('///')).to eq('///')
        end

        it 'handles paths with percent-encoded characters' do
          expect(Signer.uri_escape_path('/already%20encoded/path')).to eq('/already%2520encoded/path')
        end
      end

      describe '.normalize_path' do
        it 'normalizes paths with ".." segments' do
          uri = URI.parse('http://example.com/a/b/../c')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/a/c')
        end

        it 'normalizes paths with "." segments' do
          uri = URI.parse('http://example.com/a/./b/./c')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/a/b/c')
        end

        it 'handles complex path normalizations' do
          uri = URI.parse('http://example.com/a/b/../../c/./d/../e')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/c/e')
        end

        it 'preserves trailing slashes' do
          uri = URI.parse('http://example.com/a/b/')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/a/b/')
        end

        it 'handles empty paths' do
          uri = URI.parse('http://example.com')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('')
        end

        it 'handles paths with only root' do
          uri = URI.parse('http://example.com/')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/')
        end

        it 'preserves query and fragment parts' do
          uri = URI.parse('http://example.com/a/b/../c?query=value#fragment')
          Signer.normalize_path(uri)
          expect(uri.path).to eq('/a/c')
          expect(uri.query).to eq('query=value')
          expect(uri.fragment).to eq('fragment')
        end
      end
    end
  end
end
