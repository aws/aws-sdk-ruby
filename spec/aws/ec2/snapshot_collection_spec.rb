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
  class EC2

    describe SnapshotCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Snapshot }

        let(:client_method) { :describe_snapshots }

        def stub_two_members(resp)
          resp.data[:snapshot_set] = [
            { :snapshot_id => 'snap-123' },
            { :snapshot_id => 'snap-321' },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        context '#with_owner' do

          it 'should filter by passing the Owner.n parameter' do
            client.should_receive(:describe_snapshots).
              with(:owner_ids => ["foo", "bar"]).
              and_return(response)
            collection.with_owner("foo", "bar").each { |i| }
          end

          it 'should accept symbol values' do
            client.should_receive(:describe_snapshots).
              with(:owner_ids => ["foo", "bar"]).
              and_return(response)
            collection.with_owner(:foo, :bar).each { |i| }
          end

          it 'should preserve filters' do
            client.should_receive(:describe_snapshots).
              with(:owner_ids => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.filter("foo", "bar").
              with_owner("foo").each { |i| }
          end

          it 'should survive filtering' do
            client.should_receive(:describe_snapshots).
              with(:owner_ids => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.with_owner("foo").
              filter("foo", "bar").each { |i| }
          end

        end

        context '#restorable_by' do

          it 'should filter by passing the ExecutableBy.n parameter' do
            client.should_receive(:describe_snapshots).
              with(:restorable_by_user_ids => ["foo", "bar"]).
              and_return(response)
            collection.restorable_by("foo", "bar").each { |i| }
          end

          it 'should accept symbol values' do
            client.should_receive(:describe_snapshots).
              with(:restorable_by_user_ids => ["foo", "bar"]).
              and_return(response)
            collection.restorable_by(:foo, :bar).each { |i| }
          end

          it 'should preserve filters' do
            client.should_receive(:describe_snapshots).
              with(:restorable_by_user_ids => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.filter("foo", "bar").
              restorable_by("foo").each { |i| }
          end

          it 'should survive filtering' do
            client.should_receive(:describe_snapshots).
              with(:restorable_by_user_ids => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.restorable_by("foo").
              filter("foo", "bar").each { |i| }
          end

        end

        context '#[]' do

          it 'should pass the id' do
            collection["snap-123"].id.should == "snap-123"
          end

        end

        context '#create' do

          let(:resp) { client.new_stub_for(:create_snapshot) }

          before(:each) do
            resp.stub(:snapshot_id).and_return("snap-123")
            client.stub(:create_snapshot).and_return(resp)
          end

          it 'should call create_snapshot' do
            client.should_receive(:create_snapshot).
              with(:foo => "bar")
            collection.create(:foo => "bar")
          end

          it 'should pass :volume_id from :volume' do
            client.should_receive(:create_snapshot).
              with(:volume_id => 'vol-123')
            collection.create(:volume => Volume.new('vol-123'))
          end

          it 'should return a snapshot object' do
            collection.create.should be_a(Snapshot)
          end

          it 'should pass the id' do
            collection.create.id.should == "snap-123"
          end

          it 'should pass the config' do
            collection.create.config.should be(config)
          end

        end

      end

    end

  end
end
