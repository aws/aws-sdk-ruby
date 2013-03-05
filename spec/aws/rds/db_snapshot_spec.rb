# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  class RDS
    describe DBSnapshot do

      let(:config) { stub_config }

      let(:client) { config.rds_client }

      let(:snapshot) { DBSnapshot.new('id', :config => config) }

      let(:response) { client.stub_for(:describe_db_snapshots) }

      let(:details) {{
        :db_snapshot_identifier => snapshot.id,
        :db_instance_identifier => 'instance-id',
      }}

      before(:each) do
        response.data[:db_snapshots] = [details]
        client.stub(:describe_db_snapshots).and_return(response)
      end

      context '#db_snapshot_identifier' do

        it 'is set in the constructor' do
          DBSnapshot.new('abc').db_snapshot_identifier.should eq('abc')
        end

        it 'is aliased as #db_snapshot_id' do
          DBSnapshot.new('abc').db_snapshot_id.should eq('abc')
        end

        it 'is aliased as #id' do
          DBSnapshot.new('abc').id.should eq('abc')
        end

      end

      context 'attributes' do

        let(:now) { Time.now }

        let(:details) {{
          :db_snapshot_identifier => snapshot.id,
          :allocated_storage => 123,
          :availability_zone => 'az-name',
          :db_instance_identifier => 'db-id',
          :engine => 'mysql',
          :engine_version => '5.0',
          :license_model => 'model',
          :master_username => 'root',
          :port => 3306,
          :vpc_id => 123,
          :snapshot_type => 'type',
          :status => 'status',
          :snapshot_create_time => now,
          :instance_create_time => now,
        }}

        it 'extracts attributes' do
          s = snapshot
          s.allocated_storage.should eq(123)
          s.availability_zone_name.should eq('az-name')
          s.db_instance_id.should eq('db-id')
          s.engine.should eq('mysql')
          s.engine_version.should eq('5.0')
          s.license_model.should eq('model')
          s.master_username.should eq('root')
          s.port.should eq(3306)
          s.vpc_id.should eq(123)
          s.snapshot_type.should eq('type')
          s.status.should eq('status')
          s.created_at.should eq(now)
          s.instance_create_time.should eq(now)
        end

      end

      context '#db_instance' do

        it 'returns a DBInstance' do
          snapshot.db_instance.should be_a(DBInstance)
        end

        it 'returns a DBInstance with the proper config' do
          snapshot.db_instance.config.should eq(config)
        end

        it 'returns a DBInstance with the proper id' do
          snapshot.db_instance.id.should eq(snapshot.db_instance_id)
        end

      end

      context '#copy' do

        let(:resp) { client.stub_for(:copy_db_snapshot) }

        before(:each) do
          resp.data[:db_snapshot_identifier] = 'new-snapshot'
          client.stub(:copy_db_snapshot).and_return(resp)
        end

        it 'calls #copy_db_snapshot on the client' do
          client.should_receive(:copy_db_snapshot).with({
            :source_db_snapshot_identifier => snapshot.id,
            :target_db_snapshot_identifier => 'new-snapshot',
          }).and_return(resp)

          snapshot.copy('new-snapshot')

        end

        it 'returns a new snapshot' do
          s = snapshot.copy 'new-snapshot'
          s.should be_a(DBSnapshot)
          s.id.should eq('new-snapshot')
          s.config.should eq(config)
        end

      end

      context '#delete' do

        it 'calls #delete_db_snapshot on the client' do
          client.should_receive(:delete_db_snapshot).
            with(:db_snapshot_identifier => snapshot.id)
          snapshot.delete
        end

      end

      context '#restore_instance' do

        it 'calls #restore_db_instance_from_db_snapshot on the client' do
          client.should_receive(:restore_db_instance_from_db_snapshot).with({
            :db_snapshot_identifier => snapshot.id,
            :db_instance_identifier => snapshot.db_instance_id,
          })
          snapshot.restore_instance
        end

        it 'accepts a :db_instance_identifier option' do
          client.should_receive(:restore_db_instance_from_db_snapshot).with({
            :db_snapshot_identifier => snapshot.id,
            :db_instance_identifier => 'abc',
          })
          snapshot.restore_instance :db_instance_identifier => 'abc'
        end

      end

      context '#exists?' do

        it 'returns true if the describe call does not raise' do
          client.should_receive(:describe_db_snapshots).
            with(:db_snapshot_identifier => snapshot.id)
          snapshot.exists?.should eq(true)
        end

        it 'returns false if the describe call raises an error' do
          client.stub(:describe_db_snapshots).
            and_raise(AWS::RDS::Errors::DBSnapshotNotFound)
          snapshot.exists?.should eq(false)
        end

      end

    end
  end
end
