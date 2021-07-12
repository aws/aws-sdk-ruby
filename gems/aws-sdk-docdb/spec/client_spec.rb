# frozen_string_literal: true

require_relative './spec_helper'

module Aws
  module DocDB
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

      let(:time) { Time.utc(2020, 8, 27) }

      before do
        allow(Time).to receive(:now).and_return(time)
      end

      context 'copy_db_cluster_snapshot' do
        let(:copy_db_cluster_snapshot_params) do
          {
            kms_key_id: kms_key_id,
            source_db_cluster_snapshot_identifier: "arn:aws:rds:#{source_region}:123456789012:cluster-snapshot:source-db-cluster-snapshot",
            target_db_cluster_snapshot_identifier: 'target-db-cluster-snapshot'
          }
        end

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              copy_db_cluster_snapshot_params
            )
            expect(resp.context.params[:pre_signed_url]).to eq nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              copy_db_cluster_snapshot_params.merge(
                pre_signed_url: 'https://aws.com'
              )
            )
            expect(resp.context.params[:pre_signed_url]).to eq 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.copy_db_cluster_snapshot(
              copy_db_cluster_snapshot_params.merge(
                source_region: source_region
              )
            )

            expect(resp.context.params[:pre_signed_url]).to match(
              /01eda84cb84ff1558373f4759aaf76aa4b7be8664241a58f6906ae842a0a9d74/
            )
          end
        end
      end

      context 'create_db_cluster' do
        # note: this does not exist yet?
        # replication_source_identifier: "arn:aws:rds:#{source_region}:123456789012:cluster:source-db-cluster",
        let(:create_db_cluster_params) do
          {
            kms_key_id: kms_key_id,
            storage_encrypted: true,
            db_cluster_identifier: 'db-cluster',
            engine: 'aurora',
            master_username: 'username',
            master_user_password: 'password'
          }
        end

        context 'no source_region and no pre_signed_url' do
          it 'does not generate pre_signed_url' do
            resp = client.create_db_cluster(
              create_db_cluster_params
            )
            expect(resp.context.params[:pre_signed_url]).to eq nil
          end
        end

        context 'source_region and pre_signed_url' do
          it 'uses provided pre_signed_url' do
            resp = client.create_db_cluster(
              create_db_cluster_params.merge(
                pre_signed_url: 'https://aws.com'
              )
            )
            expect(resp.context.params[:pre_signed_url]).to eq 'https://aws.com'
          end
        end

        context 'source_region and no pre_signed_url' do
          it 'generates pre_signed_url' do
            resp = client.create_db_cluster(
              create_db_cluster_params.merge(
                source_region: source_region
              )
            )

            expect(resp.context.params[:pre_signed_url]).to match(
              /015e49149a19b1f97a40e472ac8f6da55fb559c86834a3664a279fab99063e44/
            )
          end
        end
      end
    end
  end
end
