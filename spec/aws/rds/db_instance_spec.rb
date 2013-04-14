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
    describe DBInstance do

      let(:config) { stub_config }

      let(:client) { config.rds_client }

      let(:instance) { DBInstance.new('id', :config => config) }

      let(:response) { client.stub_for(:describe_db_instances) }

      let(:details) {{}}

      before(:each) do
        response.data[:db_instances] = [details]
        client.stub(:describe_db_instances).and_return(response)
      end

      context '#db_instance_identifier' do

        it 'is set in the constructor' do
          DBInstance.new('abc').db_instance_identifier.should eq('abc')
        end

        it 'is aliased as #db_instance_id' do
          DBInstance.new('abc').db_instance_id.should eq('abc')
        end

        it 'is aliased as #id' do
          DBInstance.new('abc').id.should eq('abc')
        end

      end

      context 'attributes' do

        let(:now) { Time.now }

        let(:details) {{
          :db_instance_identifier => instance.id,
          :allocated_storage => 123,
          :auto_minor_version_upgrade => true,
          :availability_zone => 'az-name',
          :backup_retention_period => 100,
          :character_set_name => 'latin-1',
          :instance_create_time => now,
          :db_instance_class => 'db.m1.large',
          :db_instance_status => 'creating',
          :db_name => 'abc',
          :endpoint => {
            :address => '1.2.3.4',
            :port => 3306,
          },
          :engine => 'mysql',
          :engine_version => '5.0',
          :latest_restorable_time => now,
          :license_model => 'model',
          :master_username => 'root',
          :multi_az => true,
          :iops => 1000,
          :preferred_backup_window => 'window',
          :preferred_maintenance_window => 'window2',
          :read_replica_db_instance_identifiers => %w(abc xyz),
          :read_replica_source_db_instance_identifier => 'mno',
          :db_subnet_group => {
            :vpc_id => 'vpc-123',
          },
        }}

        it 'extracts attributes' do
          i = instance
          i.allocated_storage.should eq(123)
          i.auto_minor_version_upgrade.should eq(true)
          i.availability_zone_name.should eq('az-name')
          i.backup_retention_period.should eq(100)
          i.character_set_name.should eq('latin-1')
          i.creation_date_time.should eq(now)
          i.db_instance_class.should eq('db.m1.large')
          i.db_instance_status.should eq('creating')
          i.db_name.should eq('abc')
          i.endpoint_address.should eq('1.2.3.4')
          i.endpoint_port.should eq(3306)
          i.engine.should eq('mysql')
          i.engine_version.should eq('5.0')
          i.latest_restorable_time.should eq(now)
          i.license_model.should eq('model')
          i.master_username.should eq('root')
          i.multi_az.should eq(true)
          i.iops.should eq(1000)
          i.preferred_backup_window.should eq('window')
          i.preferred_maintenance_window.should eq('window2')
          i.read_replica_db_instance_identifiers.should eq(['abc','xyz'])
          i.read_replica_source_db_instance_identifier.should eq('mno')
          i.vpc_id.should eq('vpc-123')
        end

      end

      context '#vpc' do

        let(:details) {{
          :db_instance_identifier => instance.id,
          :db_subnet_group => {
            :vpc_id => 'vpc-123',
          },
        }}

        it 'returns an EC2::VPC object' do
          vpc = instance.vpc
          vpc.should be_a(EC2::VPC)
          vpc.id.should eq('vpc-123')
          vpc.config.should eq(instance.config)
        end

        it 'returns nil when it does not have a VPC id' do
          instance.stub(:vpc_id).and_return(nil)
          instance.vpc.should be(nil)
        end

      end

      context '#modify' do

        it 'calls #modify_db_instance on the client' do
          client.should_receive(:modify_db_instance).
            with(:db_instance_identifier => instance.id)
          instance.modify
        end

        it 'passes additional options to the client' do
          options = { :foo => 'abc', :bar => 'xyz' }
          client.should_receive(:modify_db_instance).
            with(options.merge(:db_instance_identifier => instance.id))
          instance.modify(options)
        end

      end

      context '#snapshots' do

        it 'returns a DBSnapshotCollection' do
          instance.snapshots.should be_a(DBSnapshotCollection)
          instance.snapshots.config.should eq(instance.config)
        end

        it 'should filter snapshots by the instance id' do

          client.should_receive(:describe_db_snapshots).
            with(:db_instance_identifier => instance.id).
            and_return(client.stub_for(:describe_db_snapshots))

          instance.snapshots.each{|s| }

        end

      end

      context '#create_snapshot' do

        before(:each) do
          resp = client.stub_for(:create_db_snapshot)
          resp.data[:db_snapshot_identifier] = 'Snap'
          resp.data[:db_instance_identifier] = instance.id
          client.stub(:create_db_snapshot).and_return(resp)
        end

        it 'calls #create_db_snapshot on the client' do
          client.should_receive(:create_db_snapshot).with({
            :db_snapshot_identifier => 'abc',
            :db_instance_identifier => instance.id,
          })
          instance.create_snapshot('abc')
        end

        it 'returns a DBSnapshot' do

          snapshot = instance.create_snapshot('Snap')
          snapshot.should be_a(DBSnapshot)
          snapshot.id.should eq('Snap')
          snapshot.db_instance.should eq(instance)
          snapshot.config.should eq(instance.config)

        end

      end

      context '#reboot' do

        it 'calls #reboot_db_instance on the client' do
          client.should_receive(:reboot_db_instance).
            with(:db_instance_identifier => instance.id)
          instance.reboot
        end

      end

      context '#delete' do

        it 'calls #delete_db_instance on the client' do
          client.should_receive(:delete_db_instance).
            with(:db_instance_identifier => instance.id)
          instance.delete
        end

      end

      context '#exists?' do

        it 'returns true if the describe call does not raise' do
          client.should_receive(:describe_db_instances).
            with(:db_instance_identifier => instance.id)
          instance.exists?.should eq(true)
        end

        it 'returns false if the describe call raises an error' do
          client.stub(:describe_db_instances).
            and_raise(AWS::RDS::Errors::DBInstanceNotFound)
          instance.exists?.should eq(false)
        end

      end

    end
  end
end
