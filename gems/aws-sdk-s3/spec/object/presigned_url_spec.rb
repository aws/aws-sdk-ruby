require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      describe '#presigned_url' do
        # from http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
        it 'generates a valid presigned url' do
          obj = Object.new(
            bucket_name: 'examplebucket',
            key: 'test.txt',
            access_key_id: 'ACCESS_KEY_ID',
            secret_access_key: 'SECRET_ACCESS_KEY',
            region: 'us-east-1'
          )

          now = Time.parse('20130524T000000Z')
          allow(Time).to receive(:now).and_return(now)
          url = obj.presigned_url(:get, expires_in: 86_400)
          expect(url).to eq(
            'https://examplebucket.s3.amazonaws.com/test.txt?X-Amz-Algorithm='\
            'AWS4-HMAC-SHA256&X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2F'\
            'us-east-1%2Fs3%2Faws4_request&X-Amz-Date=20130524T000000Z&'\
            'X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature='\
            '5da845a038b194a3826362ecd698f78fb1e26cb44b25af49263f0a0983870f57'
          )
        end

        it 'can use the bucket name to create a virtual hosted url' do
          obj = Object.new(
            bucket_name: 'my.bucket.com',
            key: 'test.txt',
            access_key_id: 'ACCESS_KEY_ID',
            secret_access_key: 'SECRET_ACCESS_KEY',
            region: 'us-east-1'
          )

          url = obj.presigned_url(:get, virtual_host: true)
          expect(url).to match(%r{^http://my\.bucket\.com(:80)?/})
        end

        it 'rejects empty keys' do
          obj = Object.new(
            'bucket-name',
            '',
            region: 'us-west-1',
            access_key_id: 'ACCESS_KEY_ID',
            secret_access_key: 'SECRET_ACCESS_KEY'
          )
          expect(obj.key).to eq('')
          expect do
            obj.presigned_url(:get)
          end.to raise_error(ArgumentError, /key must not be blank/)
        end
      end
    end
  end
end
