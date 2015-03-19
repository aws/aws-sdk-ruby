require 'spec_helper'

module Aws
  module S3
    class Bucket
      describe '#presigned_post' do

        let(:object) { Bucket.new('bucket', stub_responses: true) }

        it 'creates a presigned post without a key' do
          post = object.presigned_post(key: 'foo', acl: 'public-read')
          expect(post.fields['key']).to eq('foo')
          expect(post.fields['acl']).to eq('public-read')
        end

      end
    end
  end
end
