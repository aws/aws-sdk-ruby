require 'spec_helper'
require 'tempfile'

module Aws
  module Signers
    describe V4 do

      let(:credentials) { Credentials.new('akid', 'secret') }
      let(:datetime) { '20120101T10:11:12Z' }
      let(:service_name) { 'SERVICE' }
      let(:region) { 'REGION' }
      let(:endpoint) { URI.parse('https://domain.com') }
      let(:signer) { V4.new(credentials, service_name, region) }
      let(:sign) { signer.sign(http_request) }
      let(:http_request) do
        req = Seahorse::Client::Http::Request.new(endpoint: endpoint)
        req.headers.delete('User-Agent')
        req
      end

      let(:now) { Time.now }
      let(:utc) { now.utc }

      before(:each) {
        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      }

      context '#sign' do

        it "populates the 'HOST' header" do
          expect(sign.headers['Host']).to eq('domain.com')
        end

        it "includes port in host when non stadard" do
          endpoint.scheme = 'http'
          endpoint.port = 3000
          expect(sign.headers['Host']).to eq('domain.com:3000')
          endpoint.scheme = 'https'
          endpoint.port = 3000
          expect(sign.headers['Host']).to eq('domain.com:3000')
        end

        it "populates the 'X-Amz-Date' header" do
          datetime = '20120102:10:11:12Z'
          expect(utc).to receive(:strftime).with("%Y%m%dT%H%M%SZ") { datetime }
          expect(sign.headers['X-Amz-Date']).to eq(datetime)
        end

        it 'sets the X-Amz-Date header' do
          expect(sign.headers['X-Amz-Date']).to eq(datetime)
        end

        it "omits 'X-Amz-Security-Token' header when session token is nil" do
          allow(credentials).to receive(:session_token).and_return(nil)
          expect(sign.headers['X-Amz-Security-Token']).to be(nil)
        end

        it "populates the 'X-Amz-Security-Token' header with session token" do
          allow(credentials).to receive(:session_token).and_return('session')
          expect(sign.headers['X-Amz-Security-Token']).to eq('session')
        end

        it "populates the 'X-Amz-Content-Sha256' with the payload hexdigest" do
          http_request.body = 'abc'
          expect(sign.headers['X-Amz-Content-Sha256']).to eq(
            Digest::SHA256.hexdigest('abc'))
        end

        it 'computes the checksum of files without loading them into memory' do
          body = Tempfile.new('tempfile')
          body.write('abc')
          body.flush
          expect(body).not_to receive(:read)
          expect(body).not_to receive(:rewind)
          http_request.body = body
          expect(sign.headers['X-Amz-Content-Sha256']).to eq(
            Digest::SHA256.hexdigest('abc'))
        end

        it 'reads non-file IO objects into  memory to compute checksusm' do
          body = StringIO.new('abc')
          http_request.body = body
          expect(sign.headers['X-Amz-Content-Sha256']).to eq(
            Digest::SHA256.hexdigest('abc'))
        end

        it 'does not re-compute the the content sha-256 when present' do
          body = double('http-payload')
          expect(body).to_not receive(:read)
          expect(body).to_not receive(:rewind)
          http_request.body = body
          http_request.headers['X-Amz-Content-Sha256'] = 'hexdigest'
          expect(sign.headers['X-Amz-Content-Sha256']).to eq('hexdigest')
        end

        it "populates the 'Authorization' header" do
          expect(sign.headers['Authorization']).to_not be(nil)
        end

        it 'signs the request' do
          datetime.replace('20120102T10:11:12Z')
          http_request.headers['Foo'] = 'foo'
          http_request.headers['Bar'] = 'bar  bar'
          http_request.headers['Bar2'] = '"bar  bar"'
          http_request.body = StringIO.new('http-body')
          http_request.headers['Content-Length'] = 9
          expect(sign.headers['Authorization']).to eq('AWS4-HMAC-SHA256 Credential=akid/20120102/REGION/SERVICE/aws4_request, SignedHeaders=bar;bar2;foo;host;x-amz-content-sha256;x-amz-date, Signature=7066fb1a3fd7e436114d029b208143fdba353169990d430be4562a9c1d2749d5')
        end

      end

      context '#signed_headers' do

        it 'lower-cases and sort all header keys except authorization' do
          http_request.headers = {}
          http_request.headers['Xyz'] = '1'
          http_request.headers['Abc'] = '2'
          http_request.headers['Mno'] = '3'
          http_request.headers['Authorization'] = '4'
          http_request.headers['authorization'] = '5'
          expect(signer.signed_headers(http_request)).to eq('abc;mno;xyz')
        end

        it 'ignores certain headers such as user-agent and cache-control' do
          http_request.headers = {}
          http_request.headers['Xyz'] = '1'
          http_request.headers['Abc'] = '2'
          http_request.headers['Mno'] = '3'
          http_request.headers['Cache-Control'] = '4'
          http_request.headers['User-Agent'] = '5'
          expect(signer.signed_headers(http_request)).to eq('abc;mno;xyz')
        end

      end

      context '#canonical_headers' do

        it 'lower-cases and sorts header by key except authorization' do
          http_request.headers['Xyz'] = '1'
          http_request.headers['Abc'] = '2'
          http_request.headers['Mno'] = '3'
          http_request.headers['Authorization'] = '4'
          http_request.headers['authorization'] = '5'
          expect(signer.canonical_headers(http_request)).to eq(<<-EOS.strip)
abc:2
mno:3
xyz:1
          EOS
        end

        it 'prunes expanded whitespace in header values' do
          http_request.headers['Abc'] = 'a  b  c'
          expect(signer.canonical_headers(http_request)).to eq("abc:a b c")
        end

        it 'leaves whitespace in quoted values in-tact' do
          http_request.headers['Abc'] = '"a  b  c"'
          expect(signer.canonical_headers(http_request)).to eq('abc:"a  b  c"')
        end

      end

      context '#normalized_querystring' do

        it 'enforces the trailing = character on valueless keys' do
          input = "other=&test&x-amz-header=foo"
          expected = "other=&test=&x-amz-header=foo"
          actual = signer.normalized_querystring(input)
          expect(actual).to eq(expected)
        end

        it 'sorts the query parameters' do
          input = "foo=&bar=&baz="
          expected = "bar=&baz=&foo="
          actual = signer.normalized_querystring(input)
          expect(actual).to eq(expected)
        end

        it 'sorts by name, params with same name stay in the same order' do
          input = "q.options=abc&q=xyz&q=mno"
          expected = "q=xyz&q=mno&q.options=abc"
          actual = signer.normalized_querystring(input)
          expect(actual).to eq(expected)
        end

      end
    end
  end
end
