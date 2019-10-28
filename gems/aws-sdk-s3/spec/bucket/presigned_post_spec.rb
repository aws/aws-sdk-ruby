require_relative '../spec_helper'

module Aws
  module S3
    describe Bucket do
      describe '#presigned_post' do
        it 'creates a presigned post without a key' do
          bucket = Bucket.new('bucket', stub_responses: true)
          post = bucket.presigned_post(key: 'foo', acl: 'public-read')
          expect(post.fields['key']).to eq('foo')
          expect(post.fields['acl']).to eq('public-read')
        end

        it 'applies the :endpoint option' do
          bucket = Bucket.new(
            'bucket',
            endpoint: 'http://foo.com',
            stub_responses: true
          )
          post = bucket.presigned_post(key: 'foo')
          expect(post.url).to eq('http://bucket.foo.com')
        end
      end
    end
  end
end
