# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module EC2
    describe Client do
      let(:client) do
        Client.new(
          region: 'us-west-2',
          access_key_id: 'akid',
          secret_access_key: 'secret',
          stub_responses: true
        )
      end
      let(:kms_key_id) { '238f8ec9-420a-0690-8ec9-009f34fc3ef5' }
      let(:source_snapshot_id) { 'snap-1234567890abcdef0' }
      let(:source_region) { 'us-east-1' }
      let(:time) { Time.utc(2023, 1, 24) }

      before { allow(Time).to receive(:now).and_return(time) }

      it 'requires a source region' do
        expect { client.copy_snapshot }.to raise_error(ArgumentError, /Source region/)
      end

      it 'populates :destination_region' do
        resp = client.copy_snapshot(
          source_region: source_region,
          source_snapshot_id: source_snapshot_id
        )
        expect(resp.context.params[:destination_region]).to eq(client.config.region)
      end

      it 'populates :presigned_url' do
        resp = client.copy_snapshot(
          kms_key_id: kms_key_id,
          source_region: source_region,
          encrypted: true,
          source_snapshot_id: source_snapshot_id,
          destination_region: 'ca-central-1' # should be ignored
        )
        presigned_url = resp.context.params[:presigned_url]
        expect(presigned_url).to start_with('https://ec2.us-east-1.amazonaws.com/?')
        expect(presigned_url).to include('Action=CopySnapshot')
        expect(presigned_url).to include('DestinationRegion=us-west-2')
        expect(presigned_url).to include('Version=2016-11-15')
        expect(presigned_url).to include("KmsKeyId=#{kms_key_id}")
        expect(presigned_url).to include("SourceSnapshotId=#{source_snapshot_id}")
        expect(presigned_url).to match(/c34b30736cc5cd6a10af02c1edb50aed3d7424577644fb912f676846a65311cf/)
      end
    end
  end
end
