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
  class S3
    class Tree

      describe LeafNode do

        let(:member) { double("member",
                              :key => "foo") }

        let(:parent) { double("parent") }

        let(:node) { LeafNode.new(parent, member) }

        context '#initialize' do

          it 'stores the parent' do
            node.parent.should be(parent)
          end

          it 'stores the member object' do
            node.member.should be(member)
          end

        end

        context '#key' do

          it 'returns the key from the member object' do
            node.key.should == "foo"
          end

        end

        context '#object' do

          context 'when the member is an S3Object' do

            let(:member) { S3Object.new(Bucket.new("foo"),
                                        "bar",
                                        :config => stub_config) }

            it 'returns the member' do
              node.object.should be(member)
            end

          end

          context 'when the member is something that responds to :object' do

            let(:member) { double("something",
                                  :object => double("obj")) }

            it 'calls the object method of the member' do
              node.object.should be(member.object)
            end

          end

        end

        context '#version' do

          context 'when the member is an ObjectVersion' do

            let(:member) { ObjectVersion.new(S3Object.new(Bucket.new("foo"),
                                                          "bar"),
                                             "123") }

            it 'returns the member' do
              node.version.should be(member)
            end

          end

          context 'when the member is something else' do

            it 'should raise an error' do
              lambda { node.version }.
                should raise_error("This leaf does not represent a version")
            end

          end

        end

        context '#upload' do

          context 'when the member is a MultipartUpload' do

            let(:member) { MultipartUpload.new(S3Object.new(Bucket.new("foo"),
                                                            "bar"),
                                               "123") }

            it 'returns the member' do
              node.upload.should be(member)
            end

          end

          context 'when the member is something else' do

            it 'should raise an error' do
              lambda { node.upload }.
                should raise_error("This leaf does not represent an upload")
            end

          end

        end

        context '#branch?' do

          it 'returns false' do
            node.branch?.should == false
          end

        end

        context '#leaf?' do

          it 'returns true' do
            node.leaf?.should == true
          end

        end


        context '#inspect' do

          it 'should include the full path to the node' do
            node = LeafNode.new(parent,
                                double("member",
                                       :bucket => double("bucket",
                                                         :name => "foo"),
                                       :key => "bar"))
            node.inspect.should == "<AWS::S3::Tree::LeafNode:foo:bar>"
          end

        end

      end

    end
  end
end
