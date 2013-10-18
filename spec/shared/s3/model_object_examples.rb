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

  # TODO : dry these up a bit

  shared_examples_for 'an S3 model object' do |*args|

    let(:s3_client) { double("s3-client") }

    let(:config) { double("config",
                          :s3_client => s3_client,
                          :s3_server_side_encryption => nil) }

    let(:instance) do
      options = args.last.is_a?(Hash) ? args.pop : {}
      options[:config] = config
      args << options
      described_class.new(*args)
    end

    context '#initialize' do

      it 'should not read the client' do
        config.should_not_receive(:s3_client)
        instance
      end

    end

    context '#client' do

      it 'gets the client from the configuration' do
        instance.client.should == s3_client
      end

    end

    context '#inspect' do

      it 'should have a short inspect method' do
        instance.inspect.length.should < 100
      end

    end

  end

end
