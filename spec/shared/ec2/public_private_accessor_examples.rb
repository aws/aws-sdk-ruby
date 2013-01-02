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

  shared_examples_for "has ec2 public?/private? accessors" do

    let(:resp) { client.stub_for(describe_call) }

    before(:each) do
      resp.data[response_field] = [
        { :user_id => '1234' },
        { :group => 'all' },
      ]
      client.stub(describe_call).and_return(resp)
    end

    context '#public?' do

      it 'should call the describe method' do
        client.should_receive(describe_call).
          with(describe_params).
          and_return(resp)
        instance.public?
      end

      it 'should return true if the "all" group has access' do
        instance.should be_public
      end

      it 'should return false if the "all" group has no access' do
        resp.data[response_field] = [
          { :user_id => '1234' }
        ]
        instance.should_not be_public
      end

    end

    context '#private?' do

      it 'should call the describe method' do
        client.should_receive(describe_call).
          with(describe_params).
          and_return(resp)
        instance.private?
      end

      it 'should return false if the "all" group has access' do
        instance.should_not be_private
      end

      it 'should return true if the "all" group has no access' do
        resp.data[response_field] = [
          { :user_id => '1234' }
        ]
        instance.should be_private
      end

    end

    context '#public=' do

      context 'set to true' do

        it 'should call the modify method' do
          client.should_receive(modify_call).
            with(modify_params(:add => [{ :group => "all" }]))
          instance.public = true
        end

      end

      context 'set to false' do

        it 'should call modify_image_attribute' do
          client.should_receive(modify_call).
            with(modify_params(:remove => [{ :group => "all" }]))
          instance.public = false
        end

      end

    end

  end

end
