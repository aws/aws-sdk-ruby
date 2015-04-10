require 'spec_helper'

module Aws
  module S3
    class Object
      describe '#presigned_post' do

        let(:object) { Object.new('bucket', 'key', stub_responses: true) }

        it 'creates a presigned post with a key' do
          post = object.presigned_post(acl: 'public-read')
          expect(post.fields['key']).to eq('key')
          expect(post.fields['acl']).to eq('public-read')
        end

      end
    end
  end
end
