require 'spec_helper'

module Aws
  module S3
    describe PresignedRequest do

      before (:each) do
        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      end

      let(:region) {'us-east-1'}
      let(:credentials) {
        Credentials.new(
          "AKIAIOSFODNN7EXAMPLE",
          "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")
      }

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20130524T000000Z' }

      describe '#initialize' do

        it 'raises error when missing :region or :credentials' do
          expect {
            req = PresignedRequest.new(
              :put_object,
              credentials: credentials,
              bucket: 'bucket',
              key: 'key'
            )
          }.to raise_error(ArgumentError)
          expect {
            req = PresignedRequest.new(
              :put_object,
              region: region,
              bucket: 'bucket',
              key: 'key'
            )
          }.to raise_error(ArgumentError)
        end

        it 'raises error when missing valid :bucket or :key' do
          expect {
            req = PresignedRequest.new(
              :put_object,
              region: region,
              credentials: credentials,
              key: 'key'
            )
          }.to raise_error(KeyError)
          expect {
            req = PresignedRequest.new(
              :put_object,
              region: region,
              credentials: credentials,
              bucket: 'bucket',
              key: ''
            )
          }.to raise_error(ArgumentError, /key must not be blank/)
        end

        it 'raises when expires_in length is over 1 week' do
          expect {
            req = PresignedRequest.new(
              :get_object,
              region: region,
              credentials: credentials,
              bucket: 'bucket',
              key: 'key',
              expires_in: (7 * 86400) + 1 
            )
          }.to raise_error(ArgumentError)
        end

      end

      describe "#uri" do

        it 'can presign #get_object to spec' do
          bucket = "examplebucket"
          key = "test.txt"
          expected_url = "https://examplebucket.s3.amazonaws.com/test.txt"\
            "?X-Amz-Algorithm=AWS4-HMAC-SHA256"\
            "&X-Amz-Credential=AKIAIOSFODNN7EXAMPLE%2F20130524%2F"\
            "us-east-1%2Fs3%2Faws4_request"\
            "&X-Amz-Date=20130524T000000Z&X-Amz-Expires=86400"\
            "&X-Amz-SignedHeaders=host"\
            "&X-Amz-Signature=aeeed9bbccd4d02ee5c0109b86d86835f995330da4c26595"\
            "7d157751f604d404"

          req = PresignedRequest.new(
            :get_object,
            region: region,
            credentials: credentials,
            bucket: bucket,
            key: key,
            expires_in: 86400
          )
          expect(req.uri.to_s).to eq(expected_url)
        end

        it 'can generate http (non-secure) urls' do
          req = PresignedRequest.new(
            :get_object,
            region: region,
            credentials: credentials,
            bucket: 'bucket',
            key: 'key',
            secure: false
          )
          expect(req.uri.to_s).to match(/^http:/) 
        end

        it 'can generate virtual host style urls' do
          req = PresignedRequest.new(
            :get_object,
            region: region,
            credentials: credentials,
            bucket: 'virtual.hosted.com',
            key: 'foo',
            virtual_host: true
          )
          expect(req.uri.to_s).to match(/^http:\/\/virtual.hosted.com\/foo/) 
        end

        it 'returns same url when called twice' do
          req = PresignedRequest.new(
            :get_object,
            region: region,
            credentials: credentials,
            bucket: 'virtual.hosted.com',
            key: 'foo',
            virtual_host: true
          )
          first = req.uri.to_s
          second = req.uri.to_s
          expect(first).to eq(second)
          expect(second).to match(/^http:\/\/virtual.hosted.com\/foo/) 
        end
      end

      describe "#headers" do

        it 'allows overwrite blacklist headers in Sigv4' do
          req = PresignedRequest.new(
            :put_object,
            region: region,
            credentials: credentials,
            bucket: 'bucket',
            key: 'key',
            cache_control: 'max-age=20000',
            headers: {
              cache_control: 'max-age=20000',
            }
          )
          expect(req.headers['x-amz-cache-control']).to eq('max-age=20000')
          expect(req.uri.to_s).to match(/.*X-Amz-SignedHeaders=host%3Bx-amz-cache-control.*/)
        end

        it 'allows customize header signing' do
          req = PresignedRequest.new(
            :put_object,
            region: region,
            credentials: credentials,
            bucket: 'bucket',
            key: 'key',
            headers: {
              'foo' => 'bar'
            }
          )
          expect(req.headers['x-amz-foo']).to eq('bar')
          expect(req.uri.to_s).to match(/.*X-Amz-SignedHeaders=host%3Bx-amz-foo.*/)

        end

      end

    end
  end
end
