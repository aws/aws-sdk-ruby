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
  class SQS

    describe Request do

      let(:request) { described_class.new }
      
      it_should_behave_like "an authorize v2 request"

      it_should_behave_like "an aws query request"

      before(:each) do
        request.host = "endpoint"
      end

      context 'no queue URL parameter' do

        it 'should use the endpoint as the host' do
          request.host.should == "endpoint"
        end

        it 'should have the path "/"' do
          request.path.should == "/"
        end

      end

      context 'queue URL parameter included' do

        before(:each) do
          request.add_param("QueueUrl", "http://foo.bar/baz")
        end

        it 'should use the host from the queue URL' do
          request.host.should == "foo.bar"
        end

        it 'should use the path from the queue URL' do
          request.path.should == "/baz"
        end

      end

    end

  end
end
