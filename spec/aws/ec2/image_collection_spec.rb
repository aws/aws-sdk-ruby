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

    describe ImageCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Image }

        let(:client_method) { :describe_images }

        def stub_two_members(response)
          response.data[:images_set] = [
            { :image_id => 'ami-123' },
            { :image_id => 'ami-321' },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        context '#with_owner' do

          it 'should filter by passing the Owner.n parameter' do
            client.should_receive(:describe_images).
              with(:owners => ["foo", "bar"]).
              and_return(response)
            collection.with_owner("foo", "bar").each { |i| }
          end

          it 'should accept symbol values' do
            client.should_receive(:describe_images).
              with(:owners => ["foo", "bar"]).
              and_return(response)
            collection.with_owner(:foo, :bar).each { |i| }
          end

          it 'should preserve filters' do
            client.should_receive(:describe_images).
              with(:owners => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.filter("foo", "bar").
              with_owner("foo").each { |i| }
          end

          it 'should survive filtering' do
            client.should_receive(:describe_images).
              with(:owners => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.with_owner("foo").
              filter("foo", "bar").each { |i| }
          end

        end

        context '#executable_by' do

          it 'should filter by passing the ExecutableBy.n parameter' do
            client.should_receive(:describe_images).
              with(:executable_users => ["foo", "bar"]).
              and_return(response)
            collection.executable_by("foo", "bar").each { |i| }
          end

          it 'should accept symbol values' do
            client.should_receive(:describe_images).
              with(:executable_users => ["foo", "bar"]).
              and_return(response)
            collection.executable_by(:foo, :bar).each { |i| }
          end

          it 'should preserve filters' do
            client.should_receive(:describe_images).
              with(:executable_users => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.filter("foo", "bar").
              executable_by("foo").each { |i| }
          end

          it 'should survive filtering' do
            client.should_receive(:describe_images).
              with(:executable_users => ["foo"],
                   :filters => [{ :name => "foo",
                                  :values => ["bar"] }]).
              and_return(response)
            collection.executable_by("foo").
              filter("foo", "bar").each { |i| }
          end

        end

        context '#create' do

          context 'with an instance id' do

            let(:response) { client.new_stub_for(:create_image) }

            before(:each) do
              response.stub(:image_id).and_return("ami-123")
              client.stub(:create_image).and_return(response)
            end

            let(:required_opts) do
              { :instance_id => "i-123",
                :name => "foo" }
            end

            it 'should call create_image' do
              client.should_receive(:create_image).
                with(required_opts).
                and_return(response)
              collection.create(required_opts)
            end

            it 'should return an image object' do
              collection.create(required_opts).
                should be_an(Image)
            end

            it 'should pass the image ID' do
              collection.create(required_opts).
                id.should == "ami-123"
            end

            it 'should pass the config' do
              collection.create(required_opts).
                config.should be(config)
            end

          end

          context 'with an image location' do

            let(:response) { client.new_stub_for(:register_image) }

            before(:each) do
              response.stub(:image_id).and_return("ami-123")
              client.stub(:register_image).and_return(response)
            end

            let(:required_opts) do
              { :image_location => "foo/bar",
                :name => "foo" }
            end

            it 'should call register_image' do
              client.should_receive(:register_image).
                with(required_opts)
              collection.create(required_opts)
            end

            it 'should accept :kernel with an Image object' do
              client.should_receive(:register_image).
                with(required_opts.merge(:kernel_id => "aki-123"))
              opts = required_opts.merge(:kernel => Image.new("aki-123"))
              collection.create(opts)
            end

            it 'should accept :ramdisk with an Image object' do
              client.should_receive(:register_image).
                with(required_opts.merge(:ramdisk_id => "ari-123"))
              opts = required_opts.merge(:ramdisk => Image.new("ari-123"))
              collection.create(opts)
            end

          end

          context 'with a root device name' do

            let(:resp) { client.new_stub_for(:register_image) }

            before(:each) do
              resp.stub(:image_id).and_return("ami-123")
              client.stub(:register_image).and_return(resp)
            end

            let(:required_opts) do
              { :root_device_name => "/dev/sda1",
                :name => "foo" }
            end

            it 'should call register_image' do
              client.should_receive(:register_image).
                with(required_opts)
              collection.create(required_opts)
            end

            it 'should accept :kernel with an Image object' do
              client.should_receive(:register_image).
                with(required_opts.merge(:kernel_id => "aki-123"))
              opts = required_opts.merge(:kernel => Image.new("aki-123"))
              collection.create(opts)
            end

            it 'should accept :ramdisk with an Image object' do
              client.should_receive(:register_image).
                with(required_opts.merge(:ramdisk_id => "ari-123"))
              opts = required_opts.merge(:ramdisk => Image.new("ari-123"))
              collection.create(opts)
            end

            context 'block device mappings' do

              context 'virtual mapping' do

                it 'should send the entry value as the virtual device name' do
                  client.should_receive(:register_image).
                    with(hash_including(:block_device_mappings =>
                                        [{ :device_name => "/dev/sda1",
                                           :virtual_name => "ephemeral0" }])).
                    and_return(resp)
                  opts = required_opts.
                    merge(:block_device_mappings => {
                            "/dev/sda1" => "ephemeral0"
                          })
                  collection.create(opts)
                end

              end

              context 'ebs volume' do

                it 'should send the ebs option with all the values' do
                  client.should_receive(:register_image).
                    with(hash_including(:block_device_mappings =>
                                        [{ :device_name => "/dev/sda1",
                                           :ebs => { :foo => "bar" } }])).
                    and_return(resp)
                  opts = required_opts.
                    merge(:block_device_mappings => {
                            "/dev/sda1" => {
                              :foo => "bar"
                            }
                          })
                  collection.create(opts)
                end

                it 'should accept :snapshot' do
                  client.should_receive(:register_image).
                    with(hash_including(:block_device_mappings =>
                                        [{ :device_name => "/dev/sda1",
                                           :ebs => { :snapshot_id => "snap-123" } }])).
                    and_return(resp)
                  opts = required_opts.
                    merge(:block_device_mappings => {
                            "/dev/sda1" => {
                              :snapshot => Snapshot.new("snap-123")
                            }
                          })
                  collection.create(opts)
                end

              end

              context 'badly formatted input' do

                it 'should reject an array' do
                  lambda do
                    opts = required_opts.merge(:block_device_mappings => [])
                    collection.create(opts)
                  end.should raise_error(ArgumentError, "block_device_mappings must be a hash")
                end

                it 'should reject non-string keys' do
                  lambda do
                    opts = required_opts.
                      merge(:block_device_mappings => { :foo => "bar" })
                    collection.create(opts)
                  end.should raise_error(ArgumentError,
                                         "keys of block_device_mappings must be strings")
                end

                it 'should reject array destinations' do
                  lambda do
                    opts = required_opts.
                      merge(:block_device_mappings => { "/dev/sda1" => [] })
                    collection.create(opts)
                  end.should raise_error(ArgumentError,
                                         "values of block_device_mappings must be strings, "+
                                         "symbols, or hashes")
                end

                it 'should reject unrecognized symbolic destinations' do
                  lambda do
                    opts = required_opts.
                      merge(:block_device_mappings => {
                              "/dev/sda1" => :foobar
                            })
                    collection.create(opts)
                  end.should raise_error(ArgumentError,
                                         "unrecognized block device mapping: foobar")
                end

              end

            end

          end

          context 'missing required parameters' do

            it 'should raise an error' do
              lambda { collection.create }.
                should raise_error(ArgumentError,
                                   "expected instance_id, image_location, "+
                                   "or root_device_name")
            end

          end

        end

        context '#[]' do

          it 'should pass the image id' do
            collection["ami-123"].id.should == "ami-123"
          end

        end

      end

    end

  end
end
