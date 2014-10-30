require 'spec_helper'

module Aws
  module S3
    describe Bucket do
      describe '#delete!' do

        let(:client) { S3::Client.new(stub_responses:true) }

        let(:bucket) { Bucket.new('bucket-name', client: client) }

        it 'deletes object versions from the bucket and then deletes the bucket' do

          client.stub_responses(:list_object_versions, {
            versions: [
              { key:'key', version_id:'vid-1'},
              { key:'key', version_id:'vid-3'},
              { key:'key', version_id:'vid-5'},
            ],
            delete_markers: [
              { key:'key', version_id:'vid-2'},
              { key:'key', version_id:'vid-4'},
            ]
          })

          expect(client).to receive(:delete_objects).with(
            bucket: 'bucket-name',
            delete: {
              objects: match_array([
                { key: 'key', version_id: 'vid-1' },
                { key: 'key', version_id: 'vid-2' },
                { key: 'key', version_id: 'vid-3' },
                { key: 'key', version_id: 'vid-4' },
                { key: 'key', version_id: 'vid-5' },
              ])
            }
          )

          expect(client).to receive(:delete_bucket).with(bucket: 'bucket-name')

          bucket.delete!
        end

      end
    end
  end
end
