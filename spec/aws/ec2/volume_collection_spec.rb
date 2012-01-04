# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    describe VolumeCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Volume }

        let(:client_method) { :describe_volumes }

        def stub_two_members(resp)
          resp.stub(:volume_set).
            and_return([double("volume 1",
                               :volume_id => "vol-123"),
                        double("volume 2",
                               :volume_id => "vol-321")])
        end

        it_should_behave_like "a tagged ec2 collection"

        context '#[]' do

          it 'should pass the id' do
            collection["vol-123"].id.should == "vol-123"
          end

        end

        context '#create' do

          let(:resp) { client.new_stub_for(:create_volume) }

          before(:each) do
            resp.stub(:volume_id).and_return("vol-123")
            resp.stub(:create_time).and_return(Time.now)
            client.stub(:create_volume).and_return(resp)
          end

          it 'should call create_volume' do
            client.should_receive(:create_volume).
              with(:foo => "bar")
            collection.create(:foo => "bar")
          end

          it 'should accept a snapshot for :snapshot' do
            client.should_receive(:create_volume).
              with(:snapshot_id => "snap-123")
            collection.create(:snapshot => Snapshot.new("snap-123"))
          end

          it 'should return a volume object' do
            collection.create.should be_a(Volume)
          end

          it 'should pass the id' do
            collection.create.id.should == "vol-123"
          end

          it 'should pass the config' do
            collection.create.config.should be(config)
          end

        end

      end

    end

  end
end
