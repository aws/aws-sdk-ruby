require_relative '../spec_helper'

module Aws
  module S3
    describe Bucket do
      describe '#url' do
        let(:options) do
          {
            region: 'us-east-1',
            access_key_id: 'akid',
            secret_access_key: 'secret'
          }
        end

        let(:client) { Client.new(options) }

        it 'returns a HTTPS url for the bucket' do
          expect(Bucket.new('name', client: client).url)
            .to eq('https://name.s3.amazonaws.com')
        end

        it 'uses the configured endpoint as the domain' do
          options[:endpoint] = 'https://customdomain.com'
          bucket = Bucket.new('name', client: client)
          expect(bucket.url).to eq('https://name.customdomain.com')
        end

        it 'uses path-style address when bucket name is not dns-compatible' do
          bucket = Bucket.new('BucketName', client: client)
          expect(bucket.url).to eq('https://s3.amazonaws.com/BucketName')
        end

        it 'uses path-style address when the dns-compat bucket name has dots' do
          bucket = Bucket.new('bucket.name', client: client)
          expect(bucket.url).to eq('https://s3.amazonaws.com/bucket.name')
        end

        it 'uses dns style with dotted bucket names and https (non-ssl)' do
          options[:endpoint] = 'http://s3.amazonaws.com'
          bucket = Bucket.new('bucket.name', client: client)
          expect(bucket.url).to eq('http://bucket.name.s3.amazonaws.com')
        end

        it 'observes configuration around path style' do
          options[:endpoint] = 'http://localhost:8080'
          options[:force_path_style] = true
          bucket = Bucket.new('name', client: client)
          expect(bucket.url).to eq('http://localhost:8080/name')
        end
      end
    end
  end
end
