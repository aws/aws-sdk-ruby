require 'spec_helper'

module Aws
  module S3
    describe Object do
      describe '#presigned_url' do

        let(:client) {
          S3::Client.new(
            region: 'us-west-2',
            access_key_id:'akid',
            secret_access_key: 'secret',
          )
        }

        let(:object) { Object.new('bucket', 'key', client: client) }

        it 'returns a presigned url for the object' do
          url = object.presigned_url(:get)
          expect(url).to match(/^https:\/\/bucket\.s3-us-west-2\.amazonaws\.com\/key\?/)
        end

        it 'defaults to a 15 minute expiration' do
          url = object.presigned_url(:get)
          expect(url).to match(/x-amz-expires=900/i)
        end

        it 'passes through client request params' do
          url = object.presigned_url(:put, acl: 'public-read')
          expect(url).to match(/x-amz-acl=public-read/i)
        end

      end
    end
  end
end
