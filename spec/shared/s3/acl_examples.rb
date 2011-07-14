# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  shared_examples_for "it has an ACL" do |options|

    setter = options[:set_method]
    getter = options[:get_method]
    opts = options[:options]

    # client should be the client mock
    # model_obj should be the model object

    context '#acl=' do

      it "calls #{setter} on the client" do
        client.should_receive(setter).
          with(opts.merge(:acl => "<ACL/>"))
        model_obj.acl = "<ACL/>"
      end

    end

    context '#acl' do

      let(:acl) { S3::AccessControlList.new }

      before(:each) do
        client.stub(getter).
          and_return(double("response",
                            :acl => acl))
        client.stub(setter)
      end

      it "should call #{getter} on the client" do
        client.should_receive(getter).
          with(opts).
          and_return(double("response",
                            :acl => S3::AccessControlList.new))
        model_obj.acl
      end

      it 'should return the acl in the client response' do
        model_obj.acl.should be(acl)
      end

      it 'should add a #change method' do
        model_obj.acl.should respond_to(:change)
      end

      context '#change' do

        it 'should yield the ACL' do
          obj = double("obj")
          obj.should_receive(:call) do |a|
            a.should be(acl)
          end
          model_obj.acl.change { |a| obj.call(a) }
        end

        it "should call #{setter} at the end of the block" do
          model_obj.acl.change do |a|
            client.should_receive(setter).
              with(opts.merge(:acl => a))
          end
        end

      end

    end

  end

end
