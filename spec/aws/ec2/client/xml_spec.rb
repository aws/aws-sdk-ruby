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

    describe Errors::GRAMMAR do

      let(:resp) { described_class.parse(<<-XML) }
        <Response>
          <Errors>
            <Error>
              <Code>InvalidInstanceID.NotFound</Code>
              <Message>msg</Message>
            </Error>
          </Errors>
        </Response>
      XML

      it 'should expose the code' do
        resp.code.should == "InvalidInstanceID.NotFound"
      end

      it 'should expose the message' do
        resp.message.should == "msg"
      end

    end

    describe Client do

      def parse method, xml
        client_class = AWS::EC2::Client.new.class
        response = double('response')
        response.stub_chain(:http_response, :body).and_return(xml)
        Core::Data.new(client_class.response_parsers[method].extract_data(response))
      end

      context 'RunInstances' do

        let(:resp) { parse(:run_instances, <<-XML) }
          <RunInstancesResponse />
        XML

        it 'should have a group_set array' do
          resp.group_set.should == []
        end

        it 'should have an instances_set array' do
          resp.instances_set.should == []
        end

      end

      shared_examples_for "attachment operation" do |method|

        let(:resp) { parse(method, <<-XML) }
          <ROOT>
            <attachTime>2011-04-20T14:45:12Z</attachTime>
            <deleteOnTermination>true</deleteOnTermination>
          </ROOT>
        XML

        it 'should have an attach_time timestamp' do
          resp.attach_time.should be_a(Time)
        end

        it 'should have a delete_on_termination? method' do
          resp.delete_on_termination?.should == true
        end

      end

      context 'DetachVolume' do
        it_should_behave_like "attachment operation", :detach_volume
      end

      context 'AttachVolume' do
        it_should_behave_like "attachment operation", :attach_volume
      end

      context 'CreateSnapshot' do

        let(:resp) { parse(:create_snapshot, <<-XML) }
          <CreateSnapshotResult>
            <startTime>2011-04-20T14:45:12Z</startTime>
            <volumeSize>12</volumeSize>
          </CreateSnapshotResult>
        XML

        it 'should have a start_time timestamp' do
          resp.start_time.should be_a(Time)
        end

        it 'should have a volume_size number' do
          resp.volume_size.should == 12
        end

        it 'should have a tag_set list' do
          resp.tag_set.should == []
        end

      end

      context 'CreateVolume' do

        let(:resp) { parse(:create_volume, <<-XML) }
          <CreateVolumeResult>
            <size>12</size>
            <createTime>2011-04-20T14:45:12Z</createTime>
          </CreateVolumeResult>
        XML

        it 'should have a size number' do
          resp.size.should == 12
        end

        it 'should have a create_time timestamp' do
          resp.create_time.should be_a(Time)
        end

        it 'should have a attachment_set list' do
          resp.attachment_set.should == []
        end

        it 'should have a tag_set list' do
          resp.tag_set.should == []
        end

      end

      context 'DescribeImageAttribute' do

        let(:resp) { parse(:describe_image_attribute, <<-XML) }
          <DescribeImageAttributeResult />
        XML

        it 'should have a launch_permission list' do
          resp.launch_permission.should == []
        end

        it 'should have a product_codes list' do
          resp.product_codes.should == []
        end

        it 'should have a block_device_mapping list' do
          resp.block_device_mapping.should == []
        end

      end

      context 'DescribeInstanceAttribute' do

        let(:resp) { parse(:describe_instance_attribute, <<-XML) }
          <DescribeInstanceAttributeResult>
          <disableApiTermination><value>true</value></disableApiTermination>
          </DescribeInstanceAttributeResult>
        XML

        it 'should have a disable_api_termination.value boolean' do
          resp.disable_api_termination.value.should == true
        end

        it 'should have a block_device_mapping list' do
          resp.block_device_mapping.should == []
        end

      end

      context 'DescribeInstances' do

        let(:resp) { parse(:describe_instances, <<-XML) }
          <xml>
            <reservationSet>
              <item>
                <reservationId>r-123</reservationId>
                <instancesSet>
                  <item>
                    <instanceId>i-123</instanceId>
                  </item>
                  <item>
                    <instanceId>i-321</instanceId>
                  </item>
                </instancesSet>
              </item>
              <item>
                <reservationId>r-321</reservationId>
                <instancesSet>
                  <item>
                    <instanceId>i-456</instanceId>
                  </item>
                  <item>
                    <instanceId>i-654</instanceId>
                  </item>
                </instancesSet>
              </item>
            </reservationSet>
          </xml>
        XML

        it 'should have an instance_index' do
          resp.instance_index.keys.sort.
            should == ["i-123", "i-321", "i-456", "i-654"]
          resp.instance_index.keys.sort.should ==
            resp.instance_index.values.map { |v| v.instance_id }.sort
        end

        it 'should have a reservation_index' do
          resp.reservation_index.keys.sort.should ==
            ["i-123", "i-321", "i-456", "i-654"]
          resp.reservation_index.each do |id, reservation|
            reservation.instances_set.map { |i| i.instance_id }.
              should include(id)
          end
        end

      end

      context 'DescribeImages' do

        let(:resp) { parse(:describe_images, <<-XML) }
          <xml>
            <imagesSet>
              <item>
                <imageId>ami-123</imageId>
              </item>
              <item>
                <imageId>ami-321</imageId>
              </item>
            </imagesSet>
          </xml>
        XML

        it 'should have an image_index' do
          resp.image_index.keys.sort.
            should == ["ami-123", "ami-321"]
          resp.image_index.keys.sort.
            should == resp.image_index.values.map { |v| v.image_id }.sort
        end

      end

      context 'DescribeSecurityGroups' do

        let(:resp) { parse(:describe_security_groups, <<-XML) }
          <xml>
            <securityGroupInfo>
              <item>
                <groupId>sg-123</groupId>
              </item>
              <item>
                <groupId>sg-321</groupId>
              </item>
            </securityGroupInfo>
          </xml>
        XML

        it 'should have a security_group_index' do
          resp.security_group_index.keys.sort.
            should == ["sg-123", "sg-321"]
          resp.security_group_index.keys.sort.
            should ==
            resp.security_group_index.values.map { |v| v.group_id }.sort
        end

      end

      context 'DescribeVolumes' do

        let(:resp) { parse(:describe_volumes, <<-XML) }
          <xml>
            <volumeSet>
              <item>
                <volumeId>vol-123</volumeId>
              </item>
              <item>
                <volumeId>vol-321</volumeId>
              </item>
            </volumeSet>
          </xml>
        XML

        it 'should have a volume_index' do
          resp.volume_index.keys.sort.
            should == ["vol-123", "vol-321"]
          resp.volume_index.keys.sort.
            should ==
            resp.volume_index.values.map { |v| v.volume_id }.sort
        end

      end

      context 'DescribeSnapshots' do

        let(:resp) { parse(:describe_snapshots, <<-XML) }
          <xml>
            <snapshotSet>
              <item>
                <snapshotId>snap-123</snapshotId>
              </item>
              <item>
                <snapshotId>snap-321</snapshotId>
              </item>
            </snapshotSet>
          </xml>
        XML

        it 'should have a snapshot_index' do
          resp.snapshot_index.keys.sort.
            should == ["snap-123", "snap-321"]
          resp.snapshot_index.keys.sort.
            should ==
            resp.snapshot_index.values.map { |v| v.snapshot_id }.sort
        end

      end

      context 'DescribeAddresses' do

        let(:resp) { parse(:describe_addresses, <<-XML) }
          <xml>
            <addressesSet>
              <item>
                <publicIp>1.1.1.1</publicIp>
              </item>
              <item>
                <publicIp>2.2.2.2</publicIp>
              </item>
            </addressesSet>
          </xml>
        XML

        it 'should have an address_index' do
          resp.address_index.keys.sort.should == ["1.1.1.1", "2.2.2.2"]
          resp.address_index.keys.sort.should ==
            resp.address_index.values.map { |v| v.public_ip }.sort
        end

      end

      context 'DescribeKeyPairs' do

        let(:resp) { parse(:describe_key_pairs, <<-XML) }
          <xml>
            <keySet>
              <item>
                <keyName>one</keyName>
              </item>
              <item>
                <keyName>two</keyName>
              </item>
            </keySet>
          </xml>
        XML

        it 'should have a key_index' do
          resp.key_index.keys.sort.should == %w(one two)
          resp.key_index.keys.sort.should ==
            resp.key_index.values.map { |v| v.key_name }.sort

        end

      end

      context 'DescribeTags' do

        let(:resp) { parse(:describe_tags, <<-XML) }
          <xml>
            <tagSet>
              <item>
                <key>one</key>
                <resourceType>type-one</resourceType>
                <resourceId>resource-one</resourceId>
              </item>
              <item>
                <key>two</key>
                <resourceType>type-two</resourceType>
                <resourceId>resource-two</resourceId>
              </item>
            </tagSet>
          </xml>
        XML

        it 'should have a tag_index' do
          resp.tag_index.keys.sort.
            should == ["type-one:resource-one:one",
                       "type-two:resource-two:two"]
          resp.tag_index["type-one:resource-one:one"].key.
            should == "one"
          resp.tag_index["type-two:resource-two:two"].key.
            should == "two"
        end

      end

    end
  end
end
