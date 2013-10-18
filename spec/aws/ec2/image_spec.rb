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

    describe Image do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:image) { Image.new('ami-123', :config => config) }

      it_should_behave_like "an ec2 resource object"

      let(:describe_call) { :describe_images }

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { image }
        def stub_tags(resp, tags)
          resp.data[:image_index]['ami-123'] = { :tag_set => tags }
        end
      end

      context '#initialize' do

        it 'should set the id' do
          Image.new("ami-123").id.should == "ami-123"
        end

      end

      context '#image_id' do

        it 'aliases image_id to id' do
          image = Image.new('ami-123')
          image.id.should eq('ami-123')
          image.image_id.should eq(image.id)
        end

      end

      context '#deregister' do

        it 'should call deregister_image' do
          client.should_receive(:deregister_image).
            with(:image_id => "ami-123")
          image.deregister
        end

      end

      context 'run instance methods' do

        let(:instances) { InstanceCollection.new(:config => config) }

        before(:each) do
          instances.stub(:create).and_return(return_value)
          InstanceCollection.stub(:new).and_return(instances)
        end

        context '#run_instance' do

          let(:return_value) { Instance.new("i-123") }

          it 'should call InstanceCollection#create' do
            instances.should_receive(:create).with(:image => image)
            image.run_instance
          end

          it 'should pass additional options' do
            instances.should_receive(:create).with(:image => image,
                                                   :foo => "bar")
            image.run_instance(:foo => "bar")
          end

          it 'should return the instance' do
            image.run_instance.should be(return_value)
          end

          it 'should pass the config' do
            InstanceCollection.should_receive(:new).
              with(:config => config).
              and_return(instances)
            image.run_instance
          end

        end

        context '#run_instances' do

          let(:return_value) { [] }

          it 'should call InstanceCollection#create' do
            instances.should_receive(:create).with(:image => image,
                                                   :count => 10)
            image.run_instances(10)
          end

          it 'should call pass additional options' do
            instances.should_receive(:create).with(:image => image,
                                                   :count => 10,
                                                   :foo => "bar")
            image.run_instances(10, :foo => "bar")
          end

          it 'should return the instance' do
            image.run_instance.should be(return_value)
          end

          it 'should pass the config' do
            InstanceCollection.should_receive(:new).
              with(:config => config).
              and_return(instances)
            image.run_instances(10)
          end

        end

      end

      context '#exists?' do

        let(:resp) { client.new_stub_for(:describe_images) }

        before(:each) do
          client.stub(:describe_images).
            and_return(resp)
        end

        it 'should call describe_images' do
          client.should_receive(:describe_images).
            with(:filters => [{ :name => "image-id",
                                :values => ["ami-123"] }]).
            and_return(resp)
          image.exists?
        end

        it 'should return false when the image does not exist' do
          image.exists?.should be_false
        end

        it 'should return true when the image exists' do
          resp.stub(:images_set).and_return([double("image")])
          image.exists?.should be_true
        end

      end

      shared_examples_for "ec2 image attribute accessor (describe_images)" do

        let(:resp) { client.stub_for(:describe_images) }

        let(:response_image) {{ :image_id => "ami-123" }}

        before(:each) do
          resp.data[:image_index]["ami-123"] = response_image
          client.stub(:describe_images).and_return(resp)
        end

        context 'when returned by the service' do

          before(:each) do
            response_image[response_field] = response_value
          end

          it 'should call describe_images' do
            client.should_receive(:describe_images).
              with(:image_ids => ["ami-123"]).
              and_return(resp)
            image.send(attribute)
          end

          it 'should return the translated attribute value' do
            image.send(attribute).should == translated_value
          end

        end

        context 'when not returned by the service' do

          it 'should return nil if the field is not set' do
            image.send(attribute).should be_nil
          end

        end

      end

      shared_examples_for "static ec2 image attribute (describe_images)" do

        it_should_behave_like "ec2 image attribute accessor (describe_images)" do

          context 'with repeated calls' do

            context 'when returned by the service' do

              before(:each) do
                response_image[response_field] = response_value
              end

              it 'should call describe_images only once' do
                client.should_receive(:describe_images).once.
                  and_return(resp)
                2.times { image.send(attribute) }
              end

              it 'should return the translated value' do
                image.send(attribute)
                response_image[response_field] = "FOO"
                image.send(attribute).should == translated_value
              end

            end

            context 'when not returned by the service' do

              it 'should call describe_images only once' do
                client.should_receive(:describe_images).once.
                  and_return(resp)
                2.times { image.send(attribute) }
              end

              it 'should return nil' do
                image.send(attribute)
                response_image.stub(response_field).and_return("FOO")
                image.send(attribute).should be_nil
              end

            end

          end

        end

      end

      context '#location' do
        let(:attribute) { :location }
        let(:response_field) { :image_location }
        let(:response_value) { "foobar" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#description' do
        let(:attribute) { :description }
        let(:response_field) { attribute }
        let(:response_value) { "foobar" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#state' do
        let(:attribute) { :state }
        let(:response_field) { :image_state }
        let(:response_value) { "foobar" }
        let(:translated_value) { :foobar }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#owner_id' do
        let(:attribute) { :owner_id }
        let(:response_field) { :image_owner_id }
        let(:response_value) { "1234" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#owner_alias' do
        let(:attribute) { :owner_alias }
        let(:response_field) { :image_owner_alias }
        let(:response_value) { "self" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      it_should_behave_like 'has ec2 public?/private? accessors' do
        let(:describe_call) { :describe_image_attribute }
        let(:describe_params) do
          { :image_id => "ami-123",
            :attribute => "launchPermission" }
        end
        let(:modify_call) { :modify_image_attribute }
        def modify_params(modification)
          { :image_id => "ami-123",
            :launch_permission => modification }
        end
        let(:instance) { image }
        let(:response_field) { :launch_permission }
      end

      context '#architecture' do
        let(:attribute) { :architecture }
        let(:response_field) { attribute }
        let(:response_value) { "i386" }
        let(:translated_value) { :i386 }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#type' do
        let(:attribute) { :type }
        let(:response_field) { :image_type }
        let(:response_value) { "machine" }
        let(:translated_value) { :machine }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#kernel_id' do
        let(:attribute) { :kernel_id }
        let(:response_field) { attribute }
        let(:response_value) { "aki-123" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#kernel' do
        let(:accessor) { :kernel }
        let(:resource_class) { Image }
        let(:id_accessor) { :kernel_id }
        let(:instance) { image }
        it_should_behave_like 'accessor for ec2 resource'
      end

      context '#ramdisk_id' do
        let(:attribute) { :ramdisk_id }
        let(:response_field) { attribute }
        let(:response_value) { "ari-123" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#ramdisk' do
        let(:accessor) { :ramdisk }
        let(:resource_class) { Image }
        let(:id_accessor) { :ramdisk_id }
        let(:instance) { image }
        it_should_behave_like 'accessor for ec2 resource'
      end

      context '#platform' do
        let(:attribute) { :platform }
        let(:response_field) { attribute }
        let(:response_value) { "Windows" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#state_reason' do
        let(:reason) do
          double("reason",
                 :code => "foo",
                 :message => "bar")
        end
        let(:attribute) { :state_reason }
        let(:response_field) { attribute }
        let(:response_value) { reason }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#name' do
        let(:attribute) { :name }
        let(:response_field) { attribute }
        let(:response_value) { "my-image" }
        let(:translated_value) { response_value }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#root_device_type' do
        let(:attribute) { :root_device_type }
        let(:response_field) { attribute }
        let(:response_value) { "instance-store" }
        let(:translated_value) { :instance_store }
        it_should_behave_like "static ec2 image attribute (describe_images)"
      end

      context '#root_device_name' do
        let(:attribute) { :root_device_name }
        let(:response_field) { attribute }
        let(:response_value) { "/dev/sda1" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#virtualization_type' do
        let(:attribute) { :virtualization_type }
        let(:response_field) { attribute }
        let(:response_value) { "hvm" }
        let(:translated_value) { :hvm }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#hypervisor' do
        let(:attribute) { :hypervisor }
        let(:response_field) { attribute }
        let(:response_value) { "xen" }
        let(:translated_value) { :xen }
        it_should_behave_like "ec2 image attribute accessor (describe_images)"
      end

      context '#product_codes' do

        let(:response) { client.stub_for(:describe_images) }

        before(:each) do
          resp_image = {
            :image_id => 'ami-123',
            :product_codes => [
              { :product_code => 'abc' },
              { :product_code => 'xyz' },
            ]
          }
          response.data[:image_index]["ami-123"] = resp_image
          client.stub(:modify_image_attribute).and_return(response)
        end

        it 'gets the product codes' do
          image.product_codes.should == ['abc', 'xyz']
        end

      end

      context '#add_product_codes' do

        it 'calls modify image attribute on the client' do
          client.should_receive(:modify_image_attribute).
            with(:image_id => image.id, :product_codes => ['ABC'])
          image.add_product_codes 'ABC'
        end

        it 'accepts a list of product codes' do
          client.should_receive(:modify_image_attribute).
            with(:image_id => image.id, :product_codes => ['ABC', 'XYZ'])
          image.add_product_codes 'ABC', 'XYZ'
        end

        it 'accepts an array of product codes' do
          client.should_receive(:modify_image_attribute).
            with(:image_id => image.id, :product_codes => ['ABC', 'XYZ'])
          image.add_product_codes ['ABC', 'XYZ']
        end

      end

      context '#block_device_mappings' do

        let(:attribute) { :block_device_mappings }
        let(:response_field) { :block_device_mapping }
        let(:ebs_device) { double("ebs") }
        let(:ebs_mapping) {{
          :device_name => "/dev/sda1",
          :ebs => ebs_device,
        }}
        let(:response_value) {[
          ebs_mapping,
          { :device_name => "/dev/sdb", :virtual_name => "ephemeral0" },
        ]}
        let(:translated_value) { { "/dev/sda1" => ebs_device } }

        let(:resp) { client.stub_for(:describe_images) }

        let(:response_image) {{ :image_id => "ami-123"  }}

        before(:each) do
          resp.data[:image_index]["ami-123"] = response_image
          client.stub(:describe_images).and_return(resp)
        end

        context 'when returned by the service' do

          before(:each) do
            response_image[response_field] = response_value
          end

          it 'should call describe_images' do
            client.should_receive(:describe_images).
              with(:image_ids => ["ami-123"]).
              and_return(resp)
            image.send(attribute)
          end

          it 'should return the translated attribute value' do
            image.send(attribute).should == translated_value
          end

          it 'filters ephemeral volues' do
            image.block_device_mappings.should eq({
              '/dev/sda1' => ebs_device,
            })
            image.block_devices.should eq([
              { :device_name => "/dev/sda1", :ebs => ebs_device },
              { :device_name => "/dev/sdb", :virtual_name=>"ephemeral0" },
            ])
          end

        end

        context 'when not returned by the service' do

          it 'should return an empty hash if the field is not set' do
            image.send(attribute).should == {}
          end

        end

      end

      shared_examples_for "ec2 image attribute accessor (describe_image_attribute)" do

        let(:resp) { client.stub_for(:describe_image_attribute) }

        before(:each) do
          resp.data[response_field] = { :value => response_value }
          client.stub(:describe_image_attribute).and_return(resp)
        end

        it 'should call describe_image_attribute' do
          client.should_receive(:describe_image_attribute).
            with(:image_id => "ami-123",
                 :attribute => request_attribute_name).
            and_return(resp)
          image.send(attribute)
        end

        it 'should return the attribute value' do
          image.send(attribute).should == translated_value
        end

      end

      shared_examples_for "ec2 image attribute mutator" do

        it 'should call modify_image_attribute' do
          client.should_receive(:modify_image_attribute).
            with(Hash[[[:image_id, "ami-123"],
                       [attribute, { :value => value_to_send }]]])
          image.send(attribute_setter, input_value)
        end

        it 'should return the new value' do
          image.send(attribute_setter, input_value).should == input_value
        end

      end

      context '#description=' do

        it 'should call modify_image_attribute' do
          client.should_receive(:modify_image_attribute).
            with(:image_id => "ami-123",
                 :description => { :value => "foobar" })
          image.description = "foobar"
        end

      end

      context '#launch_permissions' do

        let(:resp) { client.new_stub_for(:describe_image_attribute) }

        before(:each) do
          resp.data[:launch_permission] = [
            { :user_id => "1234" },
            { :group => "all" },
          ]
          client.stub(:describe_image_attribute).and_return(resp)
        end

        it 'should call describe_image_attribute' do
          client.should_receive(:describe_image_attribute).
            with(:image_id => "ami-123",
                 :attribute => "launchPermission").
            and_return(resp)
          image.launch_permissions.each { |p| }
        end

        context 'permissions list' do

          let(:permissions) { image.launch_permissions }

          it 'should be enumerable' do
            permissions.should be_kind_of(Enumerable)
          end

          it 'should include the user permission as a string' do
            permissions.should include("1234")
          end

          it 'should not include the group permission' do
            permissions.should_not include("all")
          end

          it 'should report the size without the group permission' do
            permissions.size.should == 1
          end

          context '#add' do

            it 'should call modify_image_attribute' do
              client.should_receive(:modify_image_attribute).
                with(:image_id => "ami-123",
                     :launch_permission => {
                       :add => [{ :user_id => "1234" },
                                { :user_id => "5678" }]
                     })
              permissions.add("1234", "5678")
            end

            it 'should do nothing if there are no arguments' do
              client.should_not_receive(:modify_image_attribute)
              permissions.add
            end

          end

          context '#remove' do

            it 'should call modify_image_attribute' do
              client.should_receive(:modify_image_attribute).
                with(:image_id => "ami-123",
                     :launch_permission => {
                       :remove => [{ :user_id => "1234" },
                                   { :user_id => "5678" }]
                     })
              permissions.remove("1234", "5678")
            end

            it 'should do nothing if there are no arguments' do
              client.should_not_receive(:modify_image_attribute)
              permissions.remove
            end

          end

          context '#reset' do

            it 'should call reset_image_attribute' do
              client.should_receive(:reset_image_attribute).
                with(:image_id => "ami-123",
                     :attribute => "launchPermission")
              permissions.reset
            end

          end

        end

      end

      context '#cached_tags' do

        context 'when caching is disabled' do
          it 'should return nil' do
            image.cached_tags.should be_nil
          end
        end

        context 'when caching is enabled' do

          let(:cache) { double("cache") }

          let(:resp) { client.new_stub_for(:describe_images) }

          before(:each) do
            AWS.stub(:response_cache).and_return(cache)
            cache.stub(:select).and_return([resp])
          end

          it 'should query describe_images responses' do
            cache.should_receive(:select).with(:describe_images).
              and_return([resp])
            image.cached_tags
          end

          it 'should return nil if no matching instance is found' do
            image.cached_tags.should == nil
          end

          context 'when image data is cached' do

            it 'should return a hash' do
              resp.stub(:image_index).
                and_return("ami-123" =>
                           double("image",
                                  :image_id => "ami-123",
                                  :tag_set =>
                                  [double("tag 1",
                                          :key => "foo",
                                          :value => "bar"),
                                   double("tag 2",
                                          :key => "FOO",
                                          :value => "BAR")]))
              image.cached_tags.
                should == { "foo" => "bar", "FOO" => "BAR" }
            end

          end

        end

      end

    end

  end
end
