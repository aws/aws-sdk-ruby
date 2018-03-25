# frozen_string_literal: true

require_relative './spec_helper'

module Aws
  module RDS
    describe Client do

      let(:client) {
        Client.new(
          region: 'us-west-2',
          credentials: Credentials.new('akid', 'secret'),
          stub_responses: true
        )
      }

      describe 'presign_url' do

        it 'manages :destination_region and :pre_signed_url' do
          now = Time.now
          allow(Time).to receive(:now).and_return(now)

          src_region = 'us-east-1'
          src_db_snap_identifier = 'arn:aws:rds:us-east-1:123456789012:snapshot:rds:my-snapshot'
          target_db_snapshot_identifier = 'my-db-snapshot'
          kms_key_id = '238f8ec9-71da-4530-8ec9-009f4a90fef5'

          resp = client.copy_db_snapshot({
            source_region: src_region,
            kms_key_id: kms_key_id,
            source_db_snapshot_identifier: src_db_snap_identifier,
            target_db_snapshot_identifier: target_db_snapshot_identifier
          })

          expect(resp.context.params[:destination_region]).to eq('us-west-2')
          expect(resp.context.params[:pre_signed_url]).to match(/^https:\/\/rds\.#{src_region}.amazonaws.com\?Action=CopyDBSnapshot&DestinationRegion=us-west-2&KmsKeyId=#{kms_key_id}&SourceDBSnapshotIdentifier=arn%3Aaws%3Ards%3Aus-east-1%3A123456789012%3Asnapshot%3Ards%3Amy-snapshot&TargetDBSnapshotIdentifier=#{target_db_snapshot_identifier}&Version=\d{4}-\d{2}-\d{2}&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=akid%2F#{now.strftime('%Y%m%d')}%2F#{src_region}%2Frds%2Faws4_request&X-Amz-Date=#{now.strftime('%Y%m%dT%H%M%SZ')}&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=.+$/)
        end

      end
    end
  end
end
