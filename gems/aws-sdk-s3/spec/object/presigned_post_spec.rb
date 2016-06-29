require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      describe '#presigned_post' do

        it 'respects the configured client endpoint' do
          client = Aws::S3::Client.new({
            stub_responses: true,
            endpoint: 'http://custom-endpoint.com',
          })
          obj = Aws::S3::Object.new('bucket', 'key', client: client)
          expect(obj.presigned_post.url).to eq("http://bucket.custom-endpoint.com")
        end

      end
    end
  end
end
