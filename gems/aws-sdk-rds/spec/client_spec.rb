# frozen_string_literal: true

require_relative './spec_helper'

module Aws
  module RDS
    describe Client do
      let(:client) do
        Client.new(
          region: 'us-west-2',
          credentials: Credentials.new('akid', 'secret'),
          stub_responses: true
        )
      end

      let(:kms_key_id) { '238f8ec9-420a-0690-8ec9-009f34fc3ef5' }
      let(:source_region) { 'us-east-1' }

      let(:time) { Time.new(2020, 8, 27) }

      before do
        allow(Time).to receive(:now).and_return(time)
      end

      context '#copy_db_snapshot' do
        let(:source_db_snapshot_identifier) do
          "arn:aws:rds:#{source_region}:123456789012:snapshot:source-db-snapshot"
        end
        let(:target_db_snapshot_identifier) { 'target-db-snapshot' }

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.copy_db_snapshot(
              kms_key_id: kms_key_id,
              source_db_snapshot_identifier: source_db_snapshot_identifier,
              target_db_snapshot_identifier: target_db_snapshot_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.copy_db_snapshot(
              pre_signed_url: 'https://aws.com',
              kms_key_id: kms_key_id,
              source_db_snapshot_identifier: source_db_snapshot_identifier,
              target_db_snapshot_identifier: target_db_snapshot_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.copy_db_snapshot(
              source_region: source_region,
              kms_key_id: kms_key_id,
              source_db_snapshot_identifier: source_db_snapshot_identifier,
              target_db_snapshot_identifier: target_db_snapshot_identifier
            )

            puts "local: https://rds.us-east-1.amazonaws.com?Action=CopyDBSnapshot&DestinationRegion=us-west-2&KmsKeyId=238f8ec9-420a-0690-8ec9-009f34fc3ef5&SourceDBSnapshotIdentifier=arn%3Aaws%3Ards%3Aus-east-1%3A123456789012%3Asnapshot%3Asource-db-snapshot&TargetDBSnapshotIdentifier=target-db-snapshot&Version=2014-10-31&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=akid%2F20200827%2Fus-east-1%2Frds%2Faws4_request&X-Amz-Date=20200827T070000Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=bb861ad9e7f34e184c1a5355a3e95b1b3fcecaa2e15be3c8f7d16fa7bb95ee59"
            puts "remote: #{resp.context.params[:pre_signed_url]}"

            expect(resp.context.params[:pre_signed_url]).to match(
              /bb861ad9e7f34e184c1a5355a3e95b1b3fcecaa2e15be3c8f7d16fa7bb95ee59/
            )
          end
        end
      end

      context 'create_db_instance_read_replica' do
        let(:source_db_instance_identifier) do
          "arn:aws:rds:#{source_region}:123456789012:db:source-db-instance"
        end
        let(:db_instance_identifier) { 'target-db-instance' }

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.create_db_instance_read_replica(
              kms_key_id: kms_key_id,
              source_db_instance_identifier: source_db_instance_identifier,
              db_instance_identifier: db_instance_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.create_db_instance_read_replica(
              pre_signed_url: 'https://aws.com',
              kms_key_id: kms_key_id,
              source_db_instance_identifier: source_db_instance_identifier,
              db_instance_identifier: db_instance_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.create_db_instance_read_replica(
              source_region: source_region,
              kms_key_id: kms_key_id,
              source_db_instance_identifier: source_db_instance_identifier,
              db_instance_identifier: db_instance_identifier
            )

            expect(resp.context.params[:pre_signed_url]).to match(
              /74530787996bb82614e434da8a3f9d38ad785e2eb9121e2b538aeb16f6e27906/
            )
          end
        end
      end

      context 'copy_db_cluster_snapshot' do
        let(:source_db_cluster_snapshot_identifier) do
          "arn:aws:rds:#{source_region}:123456789012:cluster-snapshot:source-db-cluster-snapshot"
        end
        let(:target_db_cluster_snapshot_identifier) { 'target-db-cluster-snapshot' }

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              kms_key_id: kms_key_id,
              source_db_cluster_snapshot_identifier: source_db_cluster_snapshot_identifier,
              target_db_cluster_snapshot_identifier: target_db_cluster_snapshot_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              pre_signed_url: 'https://aws.com',
              kms_key_id: kms_key_id,
              source_db_cluster_snapshot_identifier: source_db_cluster_snapshot_identifier,
              target_db_cluster_snapshot_identifier: target_db_cluster_snapshot_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              source_region: source_region,
              kms_key_id: kms_key_id,
              source_db_cluster_snapshot_identifier: source_db_cluster_snapshot_identifier,
              target_db_cluster_snapshot_identifier: target_db_cluster_snapshot_identifier
            )

            expect(resp.context.params[:pre_signed_url]).to match(
              /ca08ac86e163f21218ad006b78566bd8fc56e4b5601a320ffa42b78380891742/
            )
          end
        end
      end

      context 'create_db_cluster' do
        let(:db_cluster_identifier) { 'db-cluster' }
        let(:engine) { 'aurora' }

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.create_db_cluster(
              kms_key_id: kms_key_id,
              db_cluster_identifier: db_cluster_identifier,
              engine: engine
            )
            expect(resp.context.params[:pre_signed_url]).to be nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.create_db_cluster(
              pre_signed_url: 'https://aws.com',
              kms_key_id: kms_key_id,
              db_cluster_identifier: db_cluster_identifier,
              engine: engine
            )
            expect(resp.context.params[:pre_signed_url]).to be 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.create_db_cluster(
              source_region: source_region,
              kms_key_id: kms_key_id,
              db_cluster_identifier: db_cluster_identifier,
              engine: engine
            )

            expect(resp.context.params[:pre_signed_url]).to match(
              /ef8f88d5e107c9ac1b5b9c690da48cceedcb5a889b2267918adc2f22e7171582/
            )
          end
        end
      end
    end
  end
end
