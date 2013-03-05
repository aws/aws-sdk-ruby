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
    describe DBSnapshotCollection do

      let(:config) { stub_config }

      let(:client) { config.rds_client }

      let(:snapshots) { DBSnapshotCollection.new(:config => config) }

      context '#[]' do

        it 'returns a DBSnapshot' do
          snapshots['abc'].should be_a(DBSnapshot)
        end

        it 'has the correct configuration' do
          snapshots['abc'].config.should eq(snapshots.config)
        end

      end

      context '#db_instance' do

        it 'returns another snapshot collection' do
          snapshots.db_instance('abc').should be_a(DBSnapshotCollection)
        end

        it 'returns a collection with the correct config)' do
          snapshots.db_instance('abc').config.should eq(config)
        end

        it 'returns a collection that filters by the db instance id' do

          client.should_receive(:describe_db_snapshots).
            with(:db_instance_identifier => 'abc').
            and_return(client.stub_for(:describe_db_snapshots))

          snapshots.db_instance('abc').each {|s|}

        end

        it 'accepts db instance objects' do

          db = DBInstance.new('abc')

          client.should_receive(:describe_db_snapshots).
            with(:db_instance_identifier => db.id).
            and_return(client.stub_for(:describe_db_snapshots))

          snapshots.db_instance(db).each{|s|}

        end

      end

      context '#with_type' do

        it 'returns another snapshot collection' do
          snapshots.with_type('abc').should be_a(DBSnapshotCollection)
        end

        it 'returns a collection with the correct config)' do
          snapshots.with_type('abc').config.should eq(config)
        end

        it 'returns a collection that filters by the db instance id' do

          client.should_receive(:describe_db_snapshots).
            with(:snapshot_type => 'abc').
            and_return(client.stub_for(:describe_db_snapshots))

          snapshots.with_type('abc').each {|s|}

        end

      end

      context '#filter' do

        it 'returns another snapshot collection' do
          snapshots.filter('key', 'value').should be_a(DBSnapshotCollection)
        end

        it 'returns a collection with the correct config)' do
          snapshots.filter('key', 'value').config.should eq(config)
        end

        it 'returns a collection that filters by the key and value' do

          client.should_receive(:describe_db_snapshots).
            with(:key => 'value').
            and_return(client.stub_for(:describe_db_snapshots))

          snapshots.filter('key', 'value').each {|s|}

        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { snapshots }
        let(:client_method)   { :describe_db_snapshots }
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:marker] = token
        end

        def stub_n_members response, n
          response.data[:db_snapshots] = (1..n).map{|i|
            { :db_snapshot_identifier => "id-#{i}" }
          }
        end

        it 'yields DBSnapshot objects' do
          stub_n_members(response,2)
          snapshots.count.should == 2
          snapshots.each{|i| i.should be_an(DBSnapshot) }
          snapshots.each{|i| i.config.should == config }
          snapshots.map(&:id).should == %w(id-1 id-2)
        end

      end

    end
  end
end
