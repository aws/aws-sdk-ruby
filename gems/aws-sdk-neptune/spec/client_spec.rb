# frozen_string_literal: true

require_relative './spec_helper'

module Aws
  module Neptune
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
              pre_signed_url: 'pre_signed_url',
              kms_key_id: kms_key_id,
              source_db_cluster_snapshot_identifier: source_db_cluster_snapshot_identifier,
              target_db_cluster_snapshot_identifier: target_db_cluster_snapshot_identifier
            )
            expect(resp.context.params[:pre_signed_url]).to be 'pre_signed_url'
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
              pre_signed_url: 'pre_signed_url',
              kms_key_id: kms_key_id,
              db_cluster_identifier: db_cluster_identifier,
              engine: engine
            )
            expect(resp.context.params[:pre_signed_url]).to be 'pre_signed_url'
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
