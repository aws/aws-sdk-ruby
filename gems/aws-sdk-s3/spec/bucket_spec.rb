require_relative 'spec_helper'

module Aws
  module S3
    class Bucket
      describe '#presigned_post' do

        def bucket(options = {})
          options[:stub_responses] ||= true
          Bucket.new('bucket', options)
        end

        it 'creates a presigned post without a key' do
          post = bucket.presigned_post(key: 'foo', acl: 'public-read')
          expect(post.fields['key']).to eq('foo')
          expect(post.fields['acl']).to eq('public-read')
        end

        it 'applies the :endpoint option' do
          post = bucket(endpoint: 'http://foo.com').presigned_post(key: 'foo')
          expect(post.url).to eq('http://bucket.foo.com')
        end

      end
    end
  end
end
