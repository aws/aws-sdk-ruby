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

    describe InstanceCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Instance }

        let(:client_method) { :describe_instances }

        def stub_two_members(resp)
          reservations =
            [double("reservation 1",
                    :instances_set =>
                    [double("inst 1",
                            :instance_id => "i-123")]),
             double("reservation 2",
                    :instances_set =>
                    [double("inst 2",
                            :instance_id => "i-123")])]
          resp.stub(:reservation_set).and_return(reservations)
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        context '#create' do

          let(:resp) { client.new_stub_for(:run_instances) }

          before(:each) do
            client.stub(:run_instances).and_return(resp)
            resp.data[:instances_set] = [{
              :instance_id => "i-123",
            }]
          end

          context 'one instance' do

            it 'should call run_instances' do
              client.should_receive(:run_instances).
                with(hash_including(:image_id => "ami-123")).
                and_return(resp)
              collection.create(:image_id => "ami-123")
            end

            it 'should default to running one instance' do
              client.should_receive(:run_instances).
                with(hash_including(:image_id => "ami-123",
                                    :min_count => 1,
                                    :max_count => 1)).
                and_return(resp)
              collection.create(:image_id => "ami-123")
            end

            it 'should Base64-encode the user data' do
              client.should_receive(:run_instances).
                with(hash_including(:user_data => "SEVMTE8=")).
                and_return(resp)
              collection.create(:image_id => "ami-123",
                                :user_data => "HELLO")
            end

            it 'should return an instance object' do
              collection.create(:image_id => "ami-123").
                should be_an(Instance)
            end

            it 'should pass the instance ID' do
              collection.create(:image_id => "ami-123").
                id.should == "i-123"
            end

            it 'should pass the config' do
              collection.create(:image_id => "ami-123").config.should be(config)
            end

          end

          context 'multiple instances' do

            let(:resp) { client.new_stub_for(:run_instances) }

            before(:each) do
              resp.data[:instances_set] = [
                { :instance_id => "i-123" },
                { :instance_id => "i-321" },
              ]
              client.stub(:run_instances).and_return(resp)
            end

            shared_examples_for 'ec2 instance count option' do |value, min, max|

              it 'should send min and max count approprately' do
                client.should_receive(:run_instances).
                  with(hash_including(:image_id => "ami-123",
                                      :min_count => min,
                                      :max_count => max)).
                  and_return(resp)
                collection.create(:image_id => "ami-123",
                                  :count => value)
              end

              context 'return value' do

                let(:return_value) { collection.create(:image_id => "ami-123",
                                                       :count => value) }

                it 'should return an array' do
                  return_value.should be_an(Array)
                end

                it 'should return instance objects' do
                  return_value.each { |i| i.should be_an(Instance) }
                end

                it 'should use the instance IDs from the response' do
                  return_value.map { |i| i.id }.should == ["i-123", "i-321"]
                end

                it 'should pass the config' do
                  return_value.each { |i| i.config.should be(config) }
                end

              end

            end

            context 'with a range' do
              it_should_behave_like "ec2 instance count option", 1..10, 1, 10
            end

            context 'with an exclusive range' do
              it_should_behave_like "ec2 instance count option", 1...10, 1, 9
            end

            context 'with a number' do
              it_should_behave_like "ec2 instance count option", 10, 10, 10
            end

          end

          shared_examples_for "run instances resource option" do

            it 'should accept an image object' do
              client.should_receive(:run_instances).
                with(hash_including(Hash[[[id_param, "resource-123"]]])).
                and_return(resp)
              collection.create(Hash[[[resource_param,
                                       resource_class.new("resource-123")]]])
            end

            it 'should not be passed to the client' do
              client.should_receive(:run_instances).
                with(hash_not_including(resource_param)).
                and_return(resp)
              collection.create(Hash[[[resource_param,
                                       resource_class.new("resource-123")]]])
            end

          end

          context ':iam_instance_profile' do

            it 'accepts an arn' do
              arn = 'arn:aws:iam::arn:aws:iam::12345678:instance-profile/name'
              client.should_receive(:run_instances).with(hash_including(
                :iam_instance_profile => { :arn => arn }
              )).and_return(resp)
              collection.create :iam_instance_profile => arn
            end

            it 'accepts a name' do
              name = 'instance-profile-name'
              client.should_receive(:run_instances).with(hash_including(
                :iam_instance_profile => { :name => name }
              )).and_return(resp)
              collection.create :iam_instance_profile => name
            end

            it 'accepts a hash' do
              profile = { :name => 'instance-profile-name' }
              client.should_receive(:run_instances).with(hash_including(
                :iam_instance_profile => profile
              )).and_return(resp)
              collection.create :iam_instance_profile => profile
            end

          end

          context ':image' do
            let(:id_param) { :image_id }
            let(:resource_param) { :image }
            let(:resource_class) { Image }
            it_should_behave_like "run instances resource option"
          end

          context ':kernel' do
            let(:id_param) { :kernel_id }
            let(:resource_param) { :kernel }
            let(:resource_class) { Image }
            it_should_behave_like "run instances resource option"
          end

          context ':ramdisk' do
            let(:id_param) { :ramdisk_id }
            let(:resource_param) { :ramdisk }
            let(:resource_class) { Image }
            it_should_behave_like "run instances resource option"
          end

          context ':key_pair' do
            let(:id_param) { :key_name }
            let(:resource_param) { :key_pair }
            let(:resource_class) { KeyPair }
            it_should_behave_like "run instances resource option"
          end

          context 'monitoring' do

            it 'should send Monitoring.Enabled' do
              client.should_receive(:run_instances).
                with(hash_including(:monitoring => { :enabled => true })).
                and_return(resp)
              collection.create(:image_id => "ami-123",
                                :monitoring_enabled => true)
            end

          end

          context ':subnet' do

            it 'defaults to not sending subnet id' do

              client.should_receive(:run_instances).with do |opts|
                opts.keys.should_not include(:subnet_id)
                hash_including(:image_id => 'ami-123')
              end.and_return(resp)

              collection.create(:image_id => "ami-123")

            end

            it 'passes :subnet as :subnet_id' do

              client.should_receive(:run_instances).
                with(hash_including(:subnet_id => 'subnet-id')).
                and_return(resp)

              collection.create(
                :image_id => "ami-123",
                :subnet => 'subnet-id')

            end

          end

          context ':private_ip_address' do

            it 'passes :private_ip_address through unmodified' do

              client.should_receive(:run_instances).
                with(hash_including(:private_ip_address => '1.2.3.4')).
                and_return(resp)

              collection.create(
                :image_id => "ami-123",
                :private_ip_address => '1.2.3.4')
            end

          end

          context ':dedicated_tenancy' do

            it 'should send Placement.Tenancy' do

              client.should_receive(:run_instances).
                with(hash_including(:placement => { :tenancy => "dedicated" })).
                and_return(resp)

              collection.create(
                :image_id => "ami-123",
                :dedicated_tenancy => true)
            end

            it 'should accept tenancy with an availability zone' do
              client.should_receive(:run_instances).
                with(hash_including(:placement => {
                  :tenancy => "dedicated",
                  :availability_zone => "us-east-1a"
                })).and_return(resp)
              collection.create(:image_id => "ami-123",
                :availability_zone => AvailabilityZone.new("us-east-1a"),
                :dedicated_tenancy => true)
            end

          end

          context 'availability zone' do

            it 'should send Placement.AvailabilityZone' do
              client.should_receive(:run_instances).
                with(hash_including(:placement => { :availability_zone => "us-east-1a" })).
                and_return(resp)
              collection.create(:image_id => "ami-123",
                                :availability_zone => "us-east-1a")
            end

            it 'should accept an availability zone object' do
              client.should_receive(:run_instances).
                with(hash_including(:placement => { :availability_zone => "us-east-1a" })).
                and_return(resp)
              collection.create(:image_id => "ami-123",
                                :availability_zone =>
                                AvailabilityZone.new("us-east-1a"))
            end

          end

          context 'client token' do

            it 'should provide a UUID client token' do
              uuid = "ee819144-6d1f-11e0-bf36-00254bfffeb7"
              UUIDTools::UUID.stub(:timestamp_create).
                and_return(uuid)
              client.should_receive(:run_instances).
                with(hash_including(:client_token => uuid)).
                and_return(resp)
              collection.create(:image_id => "ami-123")
            end

          end

          context 'security groups' do

            def run_instance options = {}
              collection.create(options.merge(:image_id => 'ami-123'))
            end

            def should_receive_sg_names *names
              client.should_receive(:run_instances).
                with(hash_including(:security_groups => names)).
                and_return(resp)
            end

            def should_receive_sg_ids *ids
              client.should_receive(:run_instances).
                with(hash_including(:security_group_ids => ids)).
                and_return(resp)
            end

            context 'non-vpc' do

              it 'accepts singular ids' do
                should_receive_sg_ids('sg-123')
                run_instance(:security_group_ids => 'sg-123')
              end

              it 'accepts multiple ids' do
                should_receive_sg_ids('sg-123', 'sg-234')
                run_instance(:security_group_ids => ['sg-123', 'sg-234'])
              end

              it 'accepts singular names' do
                should_receive_sg_names('abc')
                run_instance(:security_groups => 'abc')
              end

              it 'accepts multiple names' do
                should_receive_sg_names('abc', 'xyz')
                run_instance(:security_groups => ['abc', 'xyz'])
              end

              it 'accepts singular security group objects' do
                group = SecurityGroup.new('sg-id')
                should_receive_sg_ids('sg-id')
                run_instance(:security_groups => group)
              end

              it 'accepts multiple security group objects' do
                g1 = SecurityGroup.new('sg-id1')
                g2 = SecurityGroup.new('sg-id2')
                should_receive_sg_ids('sg-id1', 'sg-id2')
                run_instance(:security_groups => [g1, g2])
              end

              it 'accepts mixed ids, names and security groups objects' do

                client.should_receive(:run_instances).with(hash_including(
                  :security_groups => ['group2'],
                  :security_group_ids => ['sg-id3', 'sg-id1']
                )).and_return(resp)

                group = SecurityGroup.new('sg-id1')

                run_instance(
                  :security_groups => [group, 'group2'],
                  :security_group_ids => 'sg-id3')

              end

              it 'rejects invalid values' do
                lambda {
                  run_instance(:security_groups => :abc)
                }.should raise_error(ArgumentError)
              end

            end

            context 'vpc' do

              it 'accepts singular ids' do
                should_receive_sg_ids('id')
                run_instance(:subnet_id => 's', :security_group_ids => 'id')
              end

              it 'accepts multiple ids' do
                should_receive_sg_ids('id1', 'id2')
                run_instance(:subnet_id => 's', :security_group_ids => %w(id1 id2))
              end

              it 'accepts security group objects' do
                g1 = SecurityGroup.new('sg-id1')
                g2 = SecurityGroup.new('sg-id2')
                should_receive_sg_ids('sg-id1', 'sg-id2')
                run_instance(:subnet_id => 's',
                  :security_groups => [g1, g2])
              end

              it 'converts names into ids' do

                sg_collection = double('sg-collection')

                sg_collection.should_receive(:filter).
                  with('group-name', ['name1', 'name2']).
                  and_return([
                    SecurityGroup.new('sg-id1'),
                    SecurityGroup.new('sg-id2')])

                EC2.stub_chain(:new, :security_groups).and_return(sg_collection)

                should_receive_sg_ids('sg-id1', 'sg-id2')

                run_instance(:subnet_id => 's',
                  :security_groups => %w(name1 name2))

              end

            end

          end

          context 'block device mappings' do

            context 'virtual mapping' do

              it 'should send the entry value as the virtual device name' do
                client.should_receive(:run_instances).
                  with(hash_including(:block_device_mappings =>
                                      [{ :device_name => "/dev/sda1",
                                         :virtual_name => "ephemeral0" }])).
                  and_return(resp)
                collection.create(:image_id => "ami-123",
                                  :block_device_mappings => {
                                    "/dev/sda1" => "ephemeral0"
                                  })
              end

            end

            context 'no device' do

              it 'should send true for the no_device option' do
                client.should_receive(:run_instances).
                  with(hash_including(:block_device_mappings =>
                                      [{ :device_name => "/dev/sda1",
                                         :no_device => "" }])).
                  and_return(resp)
                collection.create(:image_id => "ami-123",
                                  :block_device_mappings => {
                                    "/dev/sda1" => :no_device
                                  })
              end

            end

            context 'ebs volume' do

              it 'should send the ebs option with all the values' do
                client.should_receive(:run_instances).
                  with(hash_including(:block_device_mappings =>
                                      [{ :device_name => "/dev/sda1",
                                         :ebs => { :foo => "bar" } }])).
                  and_return(resp)
                collection.create(:image_id => "ami-123",
                                  :block_device_mappings => {
                                    "/dev/sda1" => {
                                      :foo => "bar"
                                    }
                                  })
              end

              it 'should accept :snapshot' do
                client.should_receive(:run_instances).
                  with(hash_including(:block_device_mappings =>
                                      [{ :device_name => "/dev/sda1",
                                         :ebs => { :snapshot_id => "snap-123" } }])).
                  and_return(resp)
                collection.create(:image_id => "ami-123",
                                  :block_device_mappings => {
                                    "/dev/sda1" => {
                                      :snapshot => Snapshot.new("snap-123")
                                    }
                                  })
              end

            end

            context 'badly formatted input' do

              it 'should accepts an array' do
                lambda do
                  collection.create(:image_id => "ami-123",
                                    :block_device_mappings => [])
                end.should_not raise_error
              end

              it 'should reject non-string keys' do
                lambda do
                  collection.create(:image_id => "ami-123",
                                    :block_device_mappings => { :foo => "bar" })
                end.should raise_error(ArgumentError,
                                       "keys of block_device_mappings must be strings")
              end

              it 'should reject array destinations' do
                lambda do
                  collection.create(:image_id => "ami-123",
                                    :block_device_mappings => { "/dev/sda1" => [] })
                end.should raise_error(ArgumentError,
                                       "values of block_device_mappings must be strings, "+
                                       "symbols, or hashes")
              end

              it 'should reject unrecognized symbolic destinations' do
                lambda do
                  collection.create(:image_id => "ami-123",
                                    :block_device_mappings => { "/dev/sda1" => :foobar })
                end.should raise_error(ArgumentError,
                                       "unrecognized block device mapping: foobar")
              end

            end

          end

        end

        context '#[]' do

          it 'should pass the ID' do
            collection["i-123"].id.should == "i-123"
          end

        end

      end

    end

  end
end
