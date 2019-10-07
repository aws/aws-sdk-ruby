require_relative 'spec_helper'

module Aws
  module S3
    class Object

      describe '#copy_from' do
        it 'pending'
      end

      describe '#copy_to' do
        it 'pending'
      end

      describe '#move_to' do
        it 'pending'
      end

      describe '#presigned_post' do

        let(:object) { Object.new('bucket', 'key', stub_responses: true) }

        it 'creates a presigned post with a key' do
          post = object.presigned_post(acl: 'public-read')
          expect(post.fields['key']).to eq('key')
          expect(post.fields['acl']).to eq('public-read')
        end

      end

      describe '#presigned_url' do
        it 'pending'
      end

      describe '#public_url' do
        it 'pending'
      end

      describe '#upload_stream' do
        it 'pending'
      end

      describe '#upload_file' do
        it 'pending'
      end

      describe '#download_file' do
        it 'pending'
      end

    end
  end
end
