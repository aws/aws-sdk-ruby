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

    describe Instance do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:instance) { Instance.new("i-123", :config => config) }

      it_should_behave_like "an ec2 resource object"

      def stub_response_instance(resp, id, instance)
        reservation = { :instances_set => [instance] }
        resp.data[:instance_index] = { id => instance }
        resp.data[:reservation_index] = { id => reservation }
        resp.data[:reservation_set] = [reservation]
      end

      let(:describe_call) { :describe_instances }

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { instance }
        def stub_tags(resp, tags)
          stub_response_instance(resp, "i-123", { :tag_set => tags })
        end
      end

      context '#initialize' do

        it 'should accept the instance ID' do
          Instance.new("i-123", :config => config).id.should == "i-123"
        end

      end

      context '#console_output' do

        let(:response) { client.stub_for(:get_console_output) }

        before(:each) do
          response.data[:output] = "YWJj\n"
        end

        it 'calls get_console_output on the client' do
          client.should_receive(:get_console_output).
            with(:instance_id => instance.id).
            and_return(response)
          instance.console_output
        end

        it 'base 64 decodes the output' do
          instance.console_output.should == 'abc'
        end

        it 'does not attempt to decode output when blank' do
          response.data.delete(:output)
          instance.console_output.should == nil
        end

      end

      context '#exists?' do
        let(:id_filter) { "instance-id" }
        def stub_exists(resp)
          stub_response_instance(resp, resource.id, double("instance"))
        end
        it_should_behave_like "ec2 resource exists method"
      end

      shared_examples_for "ec2 instance action" do |action|

        it "should call #{action}_instances" do
          client.should_receive("#{action}_instances").
            with(:instance_ids => ["i-123"])
          instance.send(action)
        end

      end

      context '#terminate' do
        it_should_behave_like "ec2 instance action", :terminate
      end

      context '#reboot' do
        it_should_behave_like "ec2 instance action", :reboot
      end

      context '#start' do
        it_should_behave_like "ec2 instance action", :start
      end

      context '#stop' do
        it_should_behave_like "ec2 instance action", :stop
      end

      shared_examples_for "ec2 instance attribute returned from describe_instances" do

        let(:response_instance) {{ :instance_id => "i-123" }}

        # everything in describe_instances is also in run_instances
        context 'populate from run_instances' do

          let(:response) { client.stub_for(:run_instances) }

          before(:each) do
            response.data[:instances_set] = [response_instance]
          end

          context 'when returned by the service' do

            it 'should populate the correct value' do
              response_instance[response_field] = response_value
              instance.attributes_from_response(response)[attribute].
                should == translated_value
            end

          end

          context 'when not returned by the service' do

            it 'should populate nil' do
              instance.attributes_from_response(response)[attribute].
                should be_nil
            end

          end

        end

      end

      shared_examples_for "ec2 instance attribute accessor (describe_instances)" do

        let(:resp) { client.new_stub_for(:describe_instances) }

        let(:response_instance) {{ :instance_id => 'i-123'  }}

        before(:each) do
          stub_response_instance(resp, "i-123", response_instance)
          client.stub(:describe_instances).and_return(resp)
        end

        context 'when returned by the service' do

          before(:each) do
            response_instance[response_field] = response_value
          end

          it 'should call describe_instances' do
            client.should_receive(:describe_instances).
              with(:instance_ids => ["i-123"]).
              and_return(resp)
            instance.send(attribute)
          end

          it 'should return the translated attribute value' do
            instance.send(attribute).should == translated_value
          end

        end

        context 'when not returned by the service' do

          it 'should return nil if the field is not set' do
            instance.send(attribute).should be_nil
          end

        end

        it_should_behave_like "ec2 instance attribute returned from describe_instances"

      end

      context '#security_groups' do

        let(:attribute) { :security_groups }
        let(:response_field) { :group_set }
        let(:response_value) {[
          { :group_id => "sg-123", :group_name => "group1" },
          { :group_id => "sg-321", :group_name => "group2" },
        ]}
        let(:translated_value) {[
          SecurityGroup.new("sg-123", :config => config),
          SecurityGroup.new("sg-321", :config => config)
        ]}

        let(:resp) { client.stub_for(:describe_instances) }

        let(:response_instance) {{ :instance_id => "i-123" }}

        before(:each) do
          stub_response_instance(resp, "i-123", response_instance)
          client.stub(:describe_instances).and_return(resp)
        end

        context 'when returned by the service' do

          before(:each) do
            response_instance[response_field] = response_value
          end

          it 'should call describe_instances' do
            client.should_receive(:describe_instances).
              with(:instance_ids => ["i-123"]).
              and_return(resp)
            instance.send(attribute)
          end

          it 'should return the translated attribute value' do
            instance.send(attribute).should == translated_value
          end

          it 'should pass the gruop name' do
            instance.security_groups.map { |sg| sg.name }.
              should == ["group1", "group2"]
          end

        end

        context 'when not returned by the service' do

          it 'should return an empty arry if the field is not set' do
            instance.send(attribute).should == []
          end

        end
      end

      context '#private_dns_name' do
        let(:attribute) { :private_dns_name }
        let(:response_field) { attribute }
        let(:response_value) { "domU-1-2-3-4.compute.internal" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#dns_name' do
        let(:attribute) { :dns_name }
        let(:response_field) { attribute }
        let(:response_value) { "ec2-1-2-3-4.compute-1.amazonaws.com" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#ami_launch_index' do
        let(:attribute) { :ami_launch_index }
        let(:response_field) { attribute }
        let(:response_value) { 1 }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#monitoring' do

        let(:attribute) { :monitoring }
        let(:response_field) { attribute }
        let(:response_value) {{ :state => "enabled" }}
        let(:translated_value) { :enabled }

        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

        shared_examples_for "populate from monitoring action" do |client_method|

          let(:resp) { client.stub_for(client_method) }

          let(:attributes) { instance.attributes_from_response(resp) }

          context 'when the instance is not included in the response' do

            it 'should not populate' do
              attributes.should be_nil
            end

          end

          context 'when the instance is included in the response' do

            it 'should return the translated value' do
              resp.data[:instances_set] = [{
                :instance_id => "i-123",
                :monitoring => response_value,
              }]
              attributes[:monitoring].should == translated_value
            end

          end

        end

        context 'populate from monitor_instances' do
          it_should_behave_like "populate from monitoring action", :monitor_instances
        end

        context 'populate from unmonitor_instances' do
          it_should_behave_like "populate from monitoring action", :unmonitor_instances
        end

      end

      context '#monitoring_enabled?' do
        it 'should return true if monitoring is enabled' do
          instance.stub(:monitoring).and_return(:enabled)
          instance.monitoring_enabled?.should be_true
        end

        it 'should return false if monitoring is not enabled' do
          instance.stub(:monitoring).and_return(:disabled)
          instance.monitoring_enabled?.should be_false
        end
      end

      context '#monitoring_enabled=' do

        context 'enable monitoring' do

          it 'should call monitor_instances' do
            client.should_receive(:monitor_instances).
              with(:instance_ids => ["i-123"]).
              and_return(client.stub_for(:monitor_instances))
            instance.monitoring_enabled = true
          end

          it 'should return true' do
            (instance.monitoring_enabled = true).should be_true
          end

        end

        context 'disable monitoring' do

          it 'should call monitor_instances' do
            client.should_receive(:unmonitor_instances).
              with(:instance_ids => ["i-123"]).
              and_return(client.stub_for(:unmonitor_instances))
            instance.monitoring_enabled = false
          end

          it 'should return false' do
            (instance.monitoring_enabled = false).should be_false
          end

        end

      end

      context '#private_ip_address' do
        let(:attribute) { :private_ip_address }
        let(:response_field) { attribute }
        let(:response_value) { "1.2.3.4" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#ip_address' do
        let(:attribute) { :ip_address }
        let(:response_field) { attribute }
        let(:response_value) { "1.2.3.4" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#architecture' do
        let(:attribute) { :architecture }
        let(:response_field) { attribute }
        let(:response_value) { "i386" }
        let(:translated_value) { :i386 }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#root_device_type' do
        let(:attribute) { :root_device_type }
        let(:response_field) { attribute }
        let(:response_value) { "instance-store" }
        let(:translated_value) { :instance_store }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#instance_lifecycle' do
        let(:attribute) { :instance_lifecycle }
        let(:response_field) { attribute }
        let(:response_value) { "normal" }
        let(:translated_value) { :normal }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#spot_instance?' do
        it 'should return true if the instance has a spot lifecycle' do
          instance.stub(:instance_lifecycle).and_return(:spot)
          instance.spot_instance?.should be_true
        end

        it 'should return false if the instance does not have a spot lifecycle' do
          instance.stub(:instance_lifecycle).and_return(:normal)
          instance.spot_instance?.should be_false
        end
      end

      context '#virtualization_type' do
        let(:attribute) { :virtualization_type }
        let(:response_field) { attribute }
        let(:response_value) { "paravirtual" }
        let(:translated_value) { :paravirtual }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#hypervisor' do
        let(:attribute) { :hypervisor }
        let(:response_field) { attribute }
        let(:response_value) { "xen" }
        let(:translated_value) { :xen }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#state_transition_reason' do
        let(:attribute) { :state_transition_reason }
        let(:response_field) { :reason }
        let(:response_value) { "foo" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#launch_time' do
        let(:attribute) { :launch_time }
        let(:response_field) { attribute }
        let(:response_value) { Time.parse("2011-04-22T20:52:22Z") }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#platform' do
        let(:attribute) { :platform }
        let(:response_field) { attribute }
        let(:response_value) { "platform" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#client_token' do
        let(:attribute) { :client_token }
        let(:response_field) { attribute }
        let(:response_value) { "abc123" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#placement' do
        let(:attribute) { :placement }
        let(:response_field) { attribute }
        let(:response_value) { double("placement", :availability_zone => "us-east-1a") }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#availability_zone' do

        it 'should get the availability_zone attribute of the placement' do
          instance.stub(:placement).
            and_return(double("placement", :availability_zone => "us-east-1a"))
          instance.availability_zone.should == "us-east-1a"
        end

      end

      context '#iam_instance_profile_id' do
        let(:attribute) { :iam_instance_profile_id }
        let(:response_field) { :iam_instance_profile }
        let(:response_value) {{ :id => 'profile-id', :arn => 'profile-arn' }}
        let(:translated_value) { 'profile-id' }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#iam_instance_profile_arn' do
        let(:attribute) { :iam_instance_profile_arn }
        let(:response_field) { :iam_instance_profile }
        let(:response_value) {{ :id => 'profile-id', :arn => 'profile-arn' }}
        let(:translated_value) { 'profile-arn' }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#image_id' do
        let(:attribute) { :image_id }
        let(:response_field) { attribute }
        let(:response_value) { "ami-123" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

        it 'should use retrieve_attribute' do
          instance.should_receive(:retrieve_attribute).
            with do |attr|
              attr.name.should == :image_id
            end.and_return("value")
          instance.image_id.should == "value"
        end

        context 'populate from run_instances' do

          it 'should populate the correct value' do
            response = client.stub_for(:run_instances)
            response.data[:instances_set] = [
              { :instance_id => 'i-123', :image_id => 'ami-123' }
            ]
            instance.attributes_from_response(response)[:image_id].
              should == "ami-123"
          end

        end

        context 'populate from describe_instances' do

          it 'should populate the correct value' do
            response = client.stub_for(:describe_instances)
            stub_response_instance(response, "i-123", {
              :instance_id => 'i-123',
              :image_id => 'ami-123',
            })
            instance.attributes_from_response(response)[:image_id].
              should == "ami-123"
          end

        end

      end

      context '#image' do

        before(:each) { instance.stub(:image_id).and_return("ami-123") }

        it 'should return an image object' do
          instance.image.should be_an(Image)
        end

        it 'should pass the image ID' do
          instance.image.id.should == "ami-123"
        end

        it 'should pass the config' do
          instance.image.config.should be(config)
        end

      end

      context '#key_name' do
        let(:attribute) { :key_name }
        let(:response_field) { attribute }
        let(:response_value) { "foo" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"
      end

      context '#key_pair' do
        let(:accessor) { :key_pair }
        let(:id_accessor) { :key_name }
        let(:resource_class) { KeyPair }
        it_should_behave_like 'accessor for ec2 resource'
      end

      context '#create_image' do

        let(:response) { client.new_stub_for(:create_image) }

        before(:each) do
          response.stub(:image_id).and_return("ami-123")
          client.stub(:create_image).and_return(response)
        end

        it 'should call create_image' do
          client.should_receive(:create_image).
            with(:instance_id => "i-123",
                 :name => "my-image")
          instance.create_image("my-image")
        end

        it 'should pass additional options to create_image' do
          client.should_receive(:create_image).
            with(:instance_id => "i-123",
                 :name => "my-image",
                 :description => "foobar")
          instance.create_image("my-image", :description => "foobar")
        end

        it 'should return an image object' do
          instance.create_image("foo").should be_an(Image)
        end

        it 'should pass the id' do
          instance.create_image("foo").id.should == "ami-123"
        end

        it 'should pass the config' do
          instance.create_image("foo").config.should be(config)
        end

      end

      shared_examples_for "ec2 instance reservation attribute" do

        let(:resp) { client.new_stub_for(:describe_instances) }

        let(:reservation) {{ :instances_set => [response_instance] }}

        let(:response_instance) {{ :instance_id => "i-123" }}

        before(:each) do
          resp.stub(:instance_index).and_return("i-123" => response_instance)
          resp.stub(:reservation_index).and_return("i-123" => reservation)
          client.stub(:describe_instances).and_return(resp)
        end

        it 'should call describe_instances' do
          client.should_receive(:describe_instances).
            with(:instance_ids => ["i-123"]).
            and_return(resp)
          instance.send(attribute)
        end

        context 'when present' do

          before(:each) do
            reservation[attribute] = '1234'
          end

          it "should memoize the attribute value" do
            client.should_receive(:describe_instances).once
            2.times { instance.send(attribute) }
          end

          it "should return the attribute value" do
            instance.send(attribute).should == "1234"
          end

        end

        context 'when not present' do

          it 'should return nil' do
            instance.send(attribute).should be_nil
          end

        end

        context 'populate from run_instances' do

          let(:response_instance) {{ :instance_id => "i-123" }}

          let(:response) { client.stub_for(:run_instances) }

          before(:each) do
            response.data[:instances_set] = [response_instance]
          end

          context 'when returned by the service' do

            it 'should populate the correct value' do
              response.data[attribute] = '1234'
              instance.attributes_from_response(response)[attribute].
                should == "1234"
            end

          end

          context 'when not returned by the service' do

            it 'should have a key in the hash with a nil value' do
              attributes = instance.attributes_from_response(response)
              attributes.should have_key(attribute)
              attributes[attribute].should == nil
            end

          end

        end

      end

      context '#reservation_id' do
        let(:attribute) { :reservation_id }
        it_should_behave_like "ec2 instance reservation attribute"
      end

      context '#owner_id' do
        let(:attribute) { :owner_id }
        it_should_behave_like "ec2 instance reservation attribute"
      end

      context '#requester_id' do
        let(:attribute) { :requester_id }
        it_should_behave_like "ec2 instance reservation attribute"
      end

      shared_examples_for "ec2 instance attribute accessor (describe_instance_attribute)" do

        let(:resp) { client.stub_for(:describe_instance_attribute) }

        before(:each) do
          resp.request_options[:instance_id] = 'i-123'
          resp.request_options[:attribute] = request_attribute_name
          resp.data[response_field] = { :value => response_value }
          client.stub(:describe_instance_attribute).and_return(resp)
        end

        it 'should call describe_instance_attribute' do
          client.should_receive(:describe_instance_attribute).
            with(:instance_id => "i-123",
                 :attribute => request_attribute_name).
            and_return(resp)
          instance.send(attribute)
        end

        it 'should return the attribute value' do
          instance.send(attribute).should == translated_value
        end

        it 'should return nil if the attribute is not set' do
          resp.data[response_field] = nil
          instance.send(attribute).should be_nil
        end

      end

      shared_examples_for "ec2 instance attribute mutator" do

        it 'should call modify_instance_attribute' do
          client.should_receive(:modify_instance_attribute).
            with(Hash[[[:instance_id, "i-123"],
                       [attribute, { :value => value_to_send }]]])
          instance.send(attribute_setter, input_value)
        end

        it 'should return the new value' do
          instance.send(attribute_setter, input_value).should == input_value
        end

      end

      context '#user_data' do

        let(:attribute) { :user_data }
        let(:response_field) { :user_data }
        let(:response_value) { "SEVMTE8=" }
        let(:translated_value) { "HELLO" }
        let(:request_attribute_name) { "userData" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instance_attribute)"

      end

      context '#user_data=' do

        let(:attribute_setter) { :user_data= }
        let(:attribute) { :user_data }
        let(:value_to_send) { "SEVMTE8=" }
        let(:input_value) { "HELLO" }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      context '#instance_type' do

        let(:attribute) { :instance_type }
        let(:response_field) { :instance_type }
        let(:response_value) { "t1.micro" }
        let(:translated_value) { "t1.micro" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

        context 'populate from run_instances' do

          it 'should populate the correct value' do
            response = client.stub_for(:run_instances)
            response.data[:instances_set] = [
              { :instance_id => 'i-123', :instance_type => 't1.micro' }
            ]
            instance.attributes_from_response(response)[:instance_type].
              should == "t1.micro"
          end

        end

        context 'populate from describe_instances' do

          it 'should populate the correct value' do
            response = client.stub_for(:describe_instances)
            stub_response_instance(response, "i-123", {
              :instance_id => 'i-123',
              :instance_type => 't1.micro',
            })
            instance.attributes_from_response(response)[:instance_type].
              should == "t1.micro"
          end

        end

      end

      context '#instance_type=' do

        let(:attribute_setter) { :instance_type= }
        let(:attribute) { :instance_type }
        let(:value_to_send) { "m1.small" }
        let(:input_value) { "m1.small" }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      context '#api_termination_disabled?' do

        let(:attribute) { :api_termination_disabled? }
        let(:response_field) { :disable_api_termination }
        let(:response_value) { true }
        let(:translated_value) { true }
        let(:request_attribute_name) { "disableApiTermination" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instance_attribute)"

      end

      context '#api_termination_disabled=' do

        let(:attribute_setter) { :api_termination_disabled= }
        let(:attribute) { :disable_api_termination }
        let(:value_to_send) { true }
        let(:input_value) { true }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      context '#instance_initiated_shutdown_behavior' do

        let(:attribute) { :instance_initiated_shutdown_behavior }
        let(:response_field) { :instance_initiated_shutdown_behavior }
        let(:response_value) { "stop" }
        let(:translated_value) { "stop" }
        let(:request_attribute_name) { "instanceInitiatedShutdownBehavior" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instance_attribute)"

      end

      context '#instance_initiated_shutdown_behavior=' do

        let(:attribute_setter) { :instance_initiated_shutdown_behavior= }
        let(:attribute) { :instance_initiated_shutdown_behavior }
        let(:value_to_send) { "stop" }
        let(:input_value) { "stop" }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      context '#kernel_id' do

        let(:attribute) { :kernel_id }
        let(:response_field) { :kernel_id }
        let(:response_value) { "aki-123" }
        let(:translated_value) { "aki-123" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

      end

      context '#kernel_id=' do

        let(:attribute_setter) { :kernel_id= }
        let(:attribute) { :kernel }
        let(:value_to_send) { "aki-123" }
        let(:input_value) { "aki-123" }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      shared_examples_for "resets ec2 instance attribute" do

        let(:resp) { client.new_stub_for(:reset_instance_attribute) }

        before(:each) do
          resp.stub(:return)
          client.stub(:reset_instance_attribute).and_return(resp)
        end

        it 'should call reset_instance_attribute' do
          client.should_receive(:reset_instance_attribute).
            with(:instance_id => "i-123",
                 :attribute => attribute).
            and_return(resp)
          instance.send(method)
        end

        it 'should return true if the response has a true return value' do
          resp.stub(:return).and_return(true)
          instance.send(method).should be_true
        end

        it 'should return false if the response has a false return value' do
          resp.stub(:return).and_return(false)
          instance.send(method).should be_false
        end

      end

      context '#reset_kernel_id' do
        let(:method) { :reset_kernel_id }
        let(:attribute) { "kernel" }
        it_should_behave_like "resets ec2 instance attribute"
      end

      context '#reset_ramdisk_id' do
        let(:method) { :reset_ramdisk_id }
        let(:attribute) { "ramdisk" }
        it_should_behave_like "resets ec2 instance attribute"
      end

      context '#ramdisk_id' do

        let(:attribute) { :ramdisk_id }
        let(:response_field) { :ramdisk_id }
        let(:response_value) { "ari-123" }
        let(:translated_value) { "ari-123" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

      end

      context '#ramdisk_id=' do

        let(:attribute_setter) { :ramdisk_id= }
        let(:attribute) { :ramdisk }
        let(:value_to_send) { "ari-123" }
        let(:input_value) { "ari-123" }

        it_should_behave_like "ec2 instance attribute mutator"

      end

      context '#root_device_name' do

        let(:attribute) { :root_device_name }
        let(:response_field) { :root_device_name }
        let(:response_value) { "/dev/sda1" }
        let(:translated_value) { "/dev/sda1" }

        it_should_behave_like "ec2 instance attribute accessor (describe_instances)"

      end

      context '#attachments' do

        let(:resp) { client.new_stub_for(:describe_instance_attribute) }

        let(:time) { Time.parse("Thu Apr 21 16:19:57 -0700 2011") }

        let(:ebs_mapping) {{
          :volume_id => "vol-123",
          :status => "attaching",
          :attach_time => time,
          :delete_on_termination => true,
        }}

        shared_examples_for "ec2 instance block device mapping value" do

          it 'should have device names as keys' do
            mappings.should have_key("/dev/sda2")
          end

          it 'should return an attachment object as the value for each entry' do
            mappings["/dev/sda2"].should be_an(Attachment)
          end

          context 'attachment object' do

            let(:attachment) { mappings["/dev/sda2"] }

            it 'should get the volume' do
              attachment.volume.id.should == "vol-123"
            end

            it 'volume should get the config' do
              attachment.volume.config.should be(config)
            end

            it 'should get the instance' do
              attachment.instance.should be(instance)
            end

            it 'should get the device' do
              attachment.device.should == "/dev/sda2"
            end

            it 'should get the config' do
              attachment.config.should be(config)
            end

          end

        end

        context 'populated from describe_instances' do

          let(:resp) { client.new_stub_for(:describe_instances) }

          let(:mappings) do
            client.stub(:describe_instances).and_return(resp)
            instance.attachments
          end

          before(:each) do
            stub_response_instance(resp, "i-123", {
              :instance_id => "i-123",
              :block_device_mapping => [
                {
                  :device_name => "/dev/sda2",
                  :ebs => ebs_mapping,
                },
                {
                  :device_name => "/dev/sdb",
                  :virtual_name => "ephemeral0",
                },
              ]
            })
          end

          it_should_behave_like "ec2 instance block device mapping value"

          it 'provides access to all block devices via #block_devices' do
            client.stub(:describe_instances).and_return(resp)
            instance.block_devices.should eq([
              {
                :device_name => "/dev/sda2",
                :ebs => {
                  :volume_id => "vol-123",
                  :status => "attaching",
                  :attach_time => time,
                  :delete_on_termination => true
                }
              }, {
                :device_name => "/dev/sdb",
                :virtual_name => "ephemeral0",
              },
            ])
          end

        end

      end

      context '#status' do

        let(:resp) { client.new_stub_for(:describe_instances) }

        before(:each) do

          stub_response_instance(resp, "i-123", {
            :instance_id => "i-123",
            :instance_state => {
              :code => 32,
              :name => "shutting-down",
            }
          })

          client.stub(:describe_instances).and_return(resp)

        end

        it 'should call describe_instances' do

          client.should_receive(:describe_instances).
            with(:instance_ids => ["i-123"]).
            and_return(resp)

          instance.status

        end

        it 'should return the symbol-ized named of the instance state' do
          instance.status.should == :shutting_down
        end

        shared_examples_for "populates instance state change" do |op|

          let(:resp) { client.new_stub_for(op) }

          let(:response_instance) {{ :instance_id => 'i-123' }}

          let(:populated) { instance.attributes_from_response(resp) }

          before(:each) do
            resp.data[:instances_set] = [response_instance]
          end

          it 'should not populate the status when no instance matches' do
            response_instance[:instance_id] = 'i-bogus'
            populated.should be_nil
          end

          it 'should populate from the current state' do
            response_instance[:current_state] = {
              :name => "foo-bar",
              :code => 80,
            }
            populated[:status].should eq(:foo_bar)
            populated[:status_code].should eq(80)
          end

        end

        context "populates from terminate_instances" do
          it_should_behave_like("populates instance state change",
                                :terminate_instances)
        end

        context "populates from start_instances" do
          it_should_behave_like("populates instance state change",
                                :start_instances)
        end

        context "populates from stop_instances" do
          it_should_behave_like("populates instance state change",
                                :stop_instances)
        end

      end

      context 'elastic ip addresses' do

        context '#elastic_ip' do

          let(:response) { client.stub_for(:describe_addresses) }

          before(:each) do
            client.should_receive(:describe_addresses).
              with(:filters => [
                { :name => 'instance-id', :values => [instance.id]}
              ]).and_return(response)
          end

          it 'returns nil if there is no elastic ip address associated' do
            response.data[:addresses_set] = []
            instance.elastic_ip.should be_nil
          end

          it 'returns an ElasticIp when one is associated' do

            response.data[:addresses_set] = [
              { :public_ip => '1.1.1.1', :instance_id => instance.id },
            ]

            ip = instance.elastic_ip
            ip.should be_an(ElasticIp)
            ip.public_ip.should == '1.1.1.1'

          end

        end

        context '#associate_elastic_ip' do

          it 'calls associate_address on the client' do
            client.should_receive(:associate_address).
              with(:public_ip => '1.1.1.1', :instance_id => 'i-123')
            instance.stub(:vpc_id).and_return(nil)
            instance.associate_elastic_ip('1.1.1.1')
          end

          it 'accepts elastic ip address objects' do
            client.should_receive(:associate_address).
              with(:public_ip => '1.1.1.1', :instance_id => 'i-123')
            elastic_ip = ElasticIp.new('1.1.1.1')
            instance.stub(:vpc_id).and_return(nil)
            instance.associate_elastic_ip(elastic_ip)
          end

          it 'accepts allocation ids for vpc instances' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :instance_id => 'i-123')

            instance.stub(:vpc_id).and_return('vpc-id')
            instance.associate_elastic_ip('alloc-id')

          end

          it 'accepts allocation ids for vpc instances' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :instance_id => 'i-123')

            elastic_ip = ElasticIp.new('1.1.1.1', :allocation_id => 'alloc-id')

            instance.stub(:vpc_id).and_return('vpc-id')
            instance.associate_elastic_ip(elastic_ip)

          end

        end

        context '#ip_address=' do

          it 'should be an alias of associate_elastic_ip' do
            instance.method(:ip_address=).should ==
              instance.method(:associate_elastic_ip)
          end

        end

        context '#disassociate_elastic_ip_address' do

          it 'calls disassociate on its elastic ip' do
            elastic_ip = double('elastic-ip')
            elastic_ip.should_receive(:disassociate)
            instance.stub(:elastic_ip).and_return(elastic_ip)
            instance.disassociate_elastic_ip
          end

          it 'raises an exception when it does not have an elastic ip' do
            instance.stub(:elastic_ip).and_return(nil)
            lambda { instance.disassociate_elastic_ip }.should raise_error
          end

        end

      end

      context 'caching' do

        context 'populated from run_instances' do

          let(:response_instance) {{
            :instance_id => "i-123",
            :instance_type => "t1.micro",
          }}

          let(:resp) { client.new_stub_for(:run_instances) }

          before(:each) do
            resp.data[:instances_set] = [response_instance]
          end

          it 'should return a hash if the instance ID is found' do
            instance.attributes_from_response(resp).should be_a(Hash)
          end

          it 'should return nil if no instance IDs match' do
            response_instance[:instance_id] = 'i-bogus'
            instance.attributes_from_response(resp).should be_nil
          end

        end

        context 'populated from describe_instance_attribute' do

          let(:resp) { client.new_stub_for(:describe_instance_attribute) }

          before(:each) do

            resp.request_options = {
              :instance_id => 'i-123',
              :attribute => 'instanceType',
            }

            resp.data[:instance_type] = { :value => 'foo' }

          end

          it 'should return nil if the instance ID does not match' do
            resp.request_options[:instance_id] = "i-321"
            instance.attributes_from_response(resp).should be_nil
          end

        end

        context 'populated from describe_instances' do

          let(:response_instance) {{
            :instance_id => "i-123",
            :instance_type => "t1.micro",
          }}

          let(:resp) { client.new_stub_for(:describe_instances) }

          before(:each) do
            stub_response_instance(resp, "i-123", response_instance)
          end

          it 'should return a hash if the instance ID is found' do
            instance.attributes_from_response(resp).should be_a(Hash)
          end

          it 'should return nil if no instance IDs match' do
            instance = Instance.new("i-bogus", :config => config)
            instance.attributes_from_response(resp).should be_nil
          end

        end

      end

      context '#export' do

        #it 'calls #create_instance_export_task on the client'

        #it 'returns a populated ExportTask object'

        #it 'calling #cancel terminates the export task'

      end

    end

  end
end
