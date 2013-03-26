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

  describe S3 do

    let(:client) do
      double('S3::Client')
    end

    let(:s3) do
      S3.new(:s3_client => client)
    end

    it_behaves_like 'a class that accepts configuration', :s3_client

    context '#buckets' do

      it 'should return a BucketCollection' do
        s3.buckets.should be_a(S3::BucketCollection)
      end

      it 'should pass the config' do
        s3.buckets.config.should == s3.config
      end

    end

    context '#inspect' do

      it 'returns a simple string' do
        s3.inspect.should == "<AWS::S3>"
      end

    end

  end

end
