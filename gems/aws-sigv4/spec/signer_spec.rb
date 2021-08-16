# frozen_string_literal: true

require_relative 'spec_helper'

require 'tempfile'
require 'base64'

module Aws
  module Sigv4
    describe Signer do

      let(:credentials) {{
        access_key_id: 'akid',
        secret_access_key: 'secret',
      }}

      let(:options) {{
        service: 'SERVICE',
        region: 'REGION',
        credentials_provider: StaticCredentialsProvider.new(credentials),
      }}

      context '#service' do

        it 'requires a service' do
          expect do
            Signer.new(
              region: 'us-east-1',
              access_key_id: 'akid',
              secret_access_key: 'secret'
            )
          end.to raise_error(ArgumentError, /:service/)
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
              access_key_id: 'akid',
              secret_access_key: 'secret'
            )
          end.to raise_error(ArgumentError, /:region/)
        end

        it 'accepts a string' do
          expect(Signer.new(options).region).to eq(options[:region])
        end

      end

      describe '#credentials' do

        let(:options) {{ service: 'ec2', region: 'us-east-1' }}

        it 'requires credentials' do
          expect do
            Signer.new(options)
          end.to raise_error(ArgumentError, /missing credentials/)
        end

        it 'accepts :access_key_id and :secret_access_key' do
          signer = Signer.new(options.merge(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          ))
          creds = signer.credentials_provider.credentials
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to be(nil)
        end

        it 'accepts credentials with a session token' do
          signer = Signer.new(options.merge(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'token'
          ))
          creds = signer.credentials_provider.credentials
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts :credentials' do
          signer = Signer.new(options.merge(
            credentials: Credentials.new(
              access_key_id: 'akid',
              secret_access_key: 'secret',
              session_token: 'token'
            )
          ))
          creds = signer.credentials_provider.credentials
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts :credentials_provider' do
          signer = Signer.new(options.merge(
            credentials_provider: StaticCredentialsProvider.new(
              access_key_id: 'akid',
              secret_access_key: 'secret',
              session_token: 'token'
            )
          ))
          creds = signer.credentials_provider.credentials
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
        end

        it 'accepts empty credentials' do
          signer = Signer.new(options.merge(
            access_key_id: '',
            secret_access_key: ''
          ))
          creds = signer.credentials_provider.credentials
          expect(creds.access_key_id).to eq('')
          expect(creds.secret_access_key).to eq('')
        end

      end

      context '#sign_request' do

        let(:request) do
          {
            http_method: 'GET',
            url: 'http://domain.com'
          }
        end

        it 'populates the Host header' do
          signature = Signer.new(options).sign_request(request)

          expect(signature.headers['host']).to eq('domain.com')
        end

        context 'when a Host header is provided' do
          it 'uses the provided Host header' do
            signature = Signer.new(options).sign_request(
              request.merge(headers: { 'host' => 'otherdomain.com' })
            )

            expect(signature.headers['host']).to eql('otherdomain.com')
          end
        end

        context 'when credentials are not set' do
          let(:creds) do
            Credentials.new(access_key_id: '', secret_access_key: '')
          end

          it 'raises a MissingCredentialsError' do
            signer = Signer.new(
              options.merge(
                credentials_provider: StaticCredentialsProvider.new(
                  credentials: creds
                )
              ))
            expect { signer.sign_request(request) }
              .to raise_error(Errors::MissingCredentialsError)
          end
        end

        context 'when URI schema is known' do

          it 'omits port in Host when port not provided' do
            signature = Signer.new(options).sign_request(
              http_method: 'GET',
              url: 'https://domain.com'
            )
            expect(signature.headers['host']).to eq('domain.com')
          end

          it 'omits port in Host when default port and uri port are the same' do
            signature = Signer.new(options).sign_request(
              http_method: 'GET',
              url: 'https://domain.com:443'
            )
            expect(signature.headers['host']).to eq('domain.com')
          end

          it 'includes port in Host when default port and uri port are different' do
            signature = Signer.new(options).sign_request(
              http_method: 'GET',
              url: 'https://domain.com:123'
            )
            expect(signature.headers['host']).to eq('domain.com:123')
          end

        end

        context 'when URI schema is unknown' do

          it 'omits port in Host when uri port not provided' do
            signature = Signer.new(options).sign_request(
              http_method: 'GET',
              url: 'abcd://domain.com'
            )
            expect(signature.headers['host']).to eq('domain.com')

          end

          it 'includes port in Host when uri port provided' do
            signature = Signer.new(options).sign_request(
              http_method: 'GET',
              url: 'abcd://domain.com:123'
            )
            expect(signature.headers['host']).to eq('domain.com:123')
          end

        end

        it 'sets the X-Amz-Date header' do
          now = Time.now
          allow(Time).to receive(:now).and_return(now)
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com:123'
          )
          expect(signature.headers['x-amz-date']).to eq(now.utc.strftime("%Y%m%dT%H%M%SZ"))
        end

        it 'uses the X-Amz-Date header of the request if present' do
          now = Time.now.utc.strftime("%Y%m%dT%H%M%SZ")
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com',
            headers: {
              'X-Amz-Date' => now
            }
          )
          expect(signature.headers['x-amz-date']).to eq(now)
        end

        it "populates the 'X-Amz-Security-Token' header with session token" do
          credentials[:session_token] = 'token'
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com'
          )
          expect(signature.headers['x-amz-security-token']).to eq('token')
        end

        it "omits 'X-Amz-Security-Token' header when session token is nil" do
          credentials.delete(:session_token)
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com'
          )
          expect(signature.headers['x-amz-security-token']).to be(nil)
        end

        it 'adds the X-Amz-Content-Sha256 header by default' do
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com',
            body: 'abc'
          )
          expect(signature.headers['x-amz-content-sha256']).to eq(Digest::SHA256.hexdigest('abc'))
        end

        it 'can omit the X-Amz-Content-Sha256 header' do
          options[:apply_checksum_header] = false
          signature = Signer.new(options).sign_request(
            http_method: 'GET',
            url: 'https://domain.com',
            body: 'abc'
          )
          expect(signature.headers['x-amz-content-sha256']).to be(nil)
        end

        it 'computes the checksum of files without loading them into memory' do
          body = Tempfile.new('tempfile')
          body.write('abc')
          body.flush
          expect(body).not_to receive(:read)
          expect(body).not_to receive(:rewind)
          signature = Signer.new(options).sign_request(
            http_method: 'POST',
            url: 'https://domain.com',
            body: body
          )
          expect(signature.headers['x-amz-content-sha256']).to eq(Digest::SHA256.hexdigest('abc'))
        end

        it 'reads non-file IO objects into  memory to compute checksusm' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            body: StringIO.new('abc')
          )
          expect(signature.content_sha256).to eq(Digest::SHA256.hexdigest('abc'))
        end

        it 'does not read the body if X-Amz-Content-Sha256 if already present' do
          body = double('http-payload')
          expect(body).to_not receive(:read)
          expect(body).to_not receive(:rewind)
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'X-Amz-Content-Sha256' => 'hexdigest'
            },
            body: body
          )
          expect(signature.headers['x-amz-content-sha256']).to eq('hexdigest')
        end

        it "populates the 'Authorization' header" do
          headers = {}
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: headers
          )
          # applied to the signature headers, not the request
          expect(headers['authorization']).to be(nil)
          expect(signature.headers['authorization']).to_not be(nil)
        end

        it 'signs the request' do
          options[:unsigned_headers] = ['content-length']
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'https://domain.com',
            headers: {
              'Foo' => 'foo',
              'Bar' => 'bar  bar',
              'Bar2' => '"bar  bar"',
              'Content-Length' => 9,
              'X-Amz-Date' => '20120101T112233Z',
            },
            body: StringIO.new('http-body')
          )
          expect(signature.headers['authorization']).to eq('AWS4-HMAC-SHA256 Credential=akid/20120101/REGION/SERVICE/aws4_request, SignedHeaders=bar;bar2;foo;host;x-amz-content-sha256;x-amz-date, Signature=4a7d3e06d1950eb64a3daa1becaa8ba030d9099858516cb2fa4533fab4e8937d')
        end

      end

      context '#sign_event' do

        before(:each) do
          allow(Time).to receive(:now).and_return(now)
          allow(now).to receive(:utc).and_return(utc)
          allow(now).to receive(:to_i).and_return(time_i)
          allow(utc).to receive(:strftime).and_return(datetime)
        end

        let(:now) { double('now') }
        let(:utc) { double('utc-time') }
        let(:time_i) { 1546045446 }
        let(:datetime) { '20130524T000000Z' }

        it 'support event signning' do
          headers, signature = Signer.new(options).sign_event(
            '', 'foo', Aws::EventStream::Encoder.new)
          expect(headers[":date"].value).to eq(1546045446000)
          expect(Base64.strict_encode64(headers[":chunk-signature"].value)).to eq("IEu14nE+lTVGgOlSKYbTrAMErq/TM5fznmVAylH/4iY=")
          expect(signature).to eq("204bb5e2713e95354680e9522986d3ac0304aeafd33397f39e6540ca51ffe226")
        end
      end

      context ':canonical_request' do

        it 'lower-cases and sort all header keys except authorization' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'Xyz' => '1',
              'Abc' => '2',
              'Mno' => '3',
              'Authorization' => '4',
              'authorization' => '5',
              'X-Amz-Date' => '20161024T184027Z',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/

abc:2
host:domain.com
mno:3
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20161024T184027Z
xyz:1

abc;host;mno;x-amz-content-sha256;x-amz-date;xyz
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'can ignore configured headers' do
          # case insenstive
          options[:unsigned_headers] = ['cache-control', 'User-Agent']
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'Abc' => '2',
              'Cache-Control' => '4',
              'User-Agent' => '5',
              'X-Amz-Date' => '20161024T184027Z',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/

abc:2
host:domain.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20161024T184027Z

abc;host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'lower-cases and sorts header by key except authorization' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'Abc' => '1',
              'Mno' => '2',
              'Xyz' => '3',
              'Authorization' => '4',
              'authorization' => '5',
              'X-Amz-Date' => '20160101T112233Z',
            },
            body: ''
          )
          expect(signature.canonical_request).to eq(<<-EOS.strip)
PUT
/

abc:1
host:domain.com
mno:2
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20160101T112233Z
xyz:3

abc;host;mno;x-amz-content-sha256;x-amz-date;xyz
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOS
        end

        it 'prunes expanded whitespace in header values' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'Abc' => 'a  b  c', # double spaces between letters
              'X-Amz-Date' => '20160101T112233Z',
            },
            # defaults body to the empty string
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/

abc:a b c
host:domain.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20160101T112233Z

abc;host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'leaves whitespace in quoted values in-tact' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'Abc' => '"a  b  c"', # quoted header values preserve spaces
              'X-Amz-Date' => '20160101T112233Z',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/

abc:"a  b  c"
host:domain.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20160101T112233Z

abc;host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'normalizes valueless-querystring keys with a trailing =' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com?other=&test&x-amz-header=foo',
            headers: {
              'X-Amz-Date' => '20160101T112233Z',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/
other=&test=&x-amz-header=foo
host:domain.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20160101T112233Z

host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'sorts the query parameters' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com?foo=&bar=&baz=',
            headers: {
              'X-Amz-Date' => '20160101T112233Z',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/
bar=&baz=&foo=
host:domain.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20160101T112233Z

host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
          EOF
        end

        it 'sorts by name, params with same name are ordered by value' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com?q.options=abc&q=xyz&q=mno',
            headers: {
              'X-Amz-Date' => '20160101T112233Z',
            }
          )
          expect(signature.canonical_request).to include('q=mno&q=xyz&q.options=abc')
        end

        it 'uses the X-Amz-Content-Sha256 header when present' do
          signature = Signer.new(options).sign_request(
            http_method: 'PUT',
            url: 'http://domain.com',
            headers: {
              'X-Amz-Date' => '20160101T112233Z',
              'X-Amz-Content-Sha256' => 'CHECKSUM',
            }
          )
          expect(signature.canonical_request).to eq(<<-EOF.strip)
PUT
/

host:domain.com
x-amz-content-sha256:CHECKSUM
x-amz-date:20160101T112233Z

host;x-amz-content-sha256;x-amz-date
CHECKSUM
          EOF
        end

      end
    end
  end
end
