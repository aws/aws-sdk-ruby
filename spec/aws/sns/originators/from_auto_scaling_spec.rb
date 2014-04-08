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

describe AWS::SNS::FromAutoScaling do
  [
    {
      :read_from => "#{File.dirname __FILE__}/../support/sns_as_instance_terminate.json",
      :group_name => "pete-ReverseProxyAsG-AX2MGMM4X8IM"
    },
    {
      :read_from => "#{File.dirname __FILE__}/../support/sns_as_instance_launch.json",
      :group_name => "pete-ReverseProxyAsG-AX2MGMM4X8IM"
    }
  ].each do |example|
    before do
      @raw = File.open(example[:read_from], 'r') {|f| f.read}
      @json = JSON.parse @raw
      @sns = AWS::SNS::Message.new @raw
    end
    it "should be applicable" do
      AWS::SNS::FromAutoScaling.applicable?(@json).should be_true
    end
    it "should apply the mixin" do
      @sns.should respond_to :group_name
    end
    it "should set @origin to :autoscaling" do
      @sns.origin.should == :autoscaling
    end
    it "should read the group-name from the message's body correctly" do
      @sns.group_name.should == example[:group_name]
    end
  end
end
