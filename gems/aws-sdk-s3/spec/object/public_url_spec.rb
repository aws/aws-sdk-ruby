require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      describe '#public_url' do

        let(:opts) {{
          region: 'us-east-1',
          access_key_id: 'akid',
          secret_access_key: 'secret'
        }}

        let(:s3) { S3::Resource.new(opts) }

        it 'generates a basic endpoint' do
          s3 = S3::Resource.new(opts.merge(region: 'us-east-1'))
          url = s3.bucket('bucket').object('key').public_url
          expect(url).to eq('https://bucket.s3.amazonaws.com/key')
        end

        it 'uses the clients configured s3 endpoint' do
          s3 = S3::Resource.new(opts.merge(endpoint: 'http://fakes3.com:8080'))
          url = s3.bucket('bucket').object('key').public_url
          expect(url).to eq('http://bucket.fakes3.com:8080/key')
        end

        it 'preserves the path portion of custom endpoints' do
          s3 = S3::Resource.new(opts.merge(endpoint: 'http://localhost/prefix/'))
          url = s3.bucket('bucket').object('key').public_url
          expect(url).to eq('http://bucket.localhost/prefix/key')
        end

        it 'allows the user to force path-style addressing' do
          s3 = S3::Resource.new(opts.merge(
            endpoint: 'http://localhost/prefix',
            force_path_style: true
          ))
          url = s3.bucket('bucket').object('key').public_url
          expect(url).to eq('http://localhost/prefix/bucket/key')
        end

        it 'url-encodes the path portions of the object key, preserving /' do
          url = s3.bucket('bucket').object('/k&y/w&th/p&th').public_url
          expect(url).to eq('https://bucket.s3.amazonaws.com//k%26y/w%26th/p%26th')
        end

        it 'url-encodes the bucket name' do
          url = s3.bucket('Bucket Name').object('key').public_url
          expect(url).to eq('https://s3.amazonaws.com/Bucket%20Name/key')
        end

        it 'puts DNS-compatible bucket names in host' do
          url = s3.bucket('bucket-name').object('key').public_url
          expect(url).to eq('https://bucket-name.s3.amazonaws.com/key')
        end

        it 'puts DNS-incompatible bucket names in the path' do
          url = s3.bucket('BUCKET').object('key').public_url
          expect(url).to eq('https://s3.amazonaws.com/BUCKET/key')
        end

        it 'puts bucket with dotted names in the path' do
          url = s3.bucket('bucket.name').object('key').public_url
          expect(url).to eq('https://s3.amazonaws.com/bucket.name/key')
        end

      end
    end
  end
end
