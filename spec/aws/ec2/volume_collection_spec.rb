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

    describe VolumeCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Volume }

        let(:client_method) { :describe_volumes }

        def stub_two_members(resp)
          resp.data[:volume_set] = [
            { :volume_id => "vol-123" },
            { :volume_id => "vol-321" },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        context '#create' do

          let(:resp) { client.stub_for(:create_volume) }

          let(:now) { Time.now }

          before(:each) do
            resp.data[:volume_id] = 'vol-123'
            resp.data[:create_time] = now
            resp.data[:iops] = 'iops'
            client.stub(:create_volume).and_return(resp)
          end

          it 'should call create_volume' do
            client.should_receive(:create_volume).with(:foo => "bar")
            collection.create(:foo => "bar")
          end

          it 'should accept a snapshot for :snapshot' do
            client.should_receive(:create_volume).
              with(:snapshot_id => "snap-123")
            collection.create(:snapshot => Snapshot.new("snap-123"))
          end

          it 'should return a volume object' do
            volume = collection.create
            volume.should be_a(Volume)
            volume.id.should == 'vol-123'
            volume.create_time.should == now
            volume.iops.should == 'iops'
            volume.config.should == config
          end

        end

      end

    end

  end
end
