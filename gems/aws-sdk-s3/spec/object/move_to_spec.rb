require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      describe '#move_to' do
        it 'copies and then deletes the object' do
          client = Client.new(stub_responses: true)
          expect(client).to receive(:copy_object).with(
            bucket: 'target-bucket',
            key: 'target-key',
            copy_source: 'source-bucket/source-key'
          ).and_call_original

          expect(client).to receive(:delete_object).with(
            bucket: 'source-bucket',
            key: 'source-key'
          ).and_call_original

          obj = S3::Object.new('source-bucket', 'source-key', client: client)
          obj.move_to('target-bucket/target-key')
        end
      end
    end
  end
end
