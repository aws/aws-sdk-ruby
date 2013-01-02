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

  describe SQS do

    let(:config) { stub_config }

    let(:sqs) do
      SQS.new(:config => config)
    end

    it_behaves_like 'a class that accepts configuration', :sqs_client

    shared_examples_for 'sqs top level collection' do |method, klass|

      it "should return an instance of #{klass}" do
        sqs.send(method).should be_an(klass)
      end

      it 'should pass the config' do
        sqs.send(method).config.should == sqs.config
      end

    end

    context '#queues' do
      it_should_behave_like 'sqs top level collection', :queues, SQS::QueueCollection
    end

  end

end
