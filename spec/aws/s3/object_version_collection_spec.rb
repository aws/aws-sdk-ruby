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
    describe ObjectVersionCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foo', :config => config) }

      let(:object) { S3Object.new(bucket, '/bar') }

      let(:collection) { ObjectVersionCollection.new(object) }

      it_should_behave_like "an S3 model object", Object.new

      it_should_behave_like "enumerable"

      context '#intialize' do

        it 'requires object' do
          lambda {
            ObjectVersionCollection.new
          }.should raise_error(ArgumentError)
        end

      end

      context '#[]' do

        it 'it returns a versioned object' do
          collection['fake-version-id'].should be_a(ObjectVersion)
        end

        it 'returns an object with the correct version id' do
          collection['foo'].version_id.should == 'foo'
        end

        it 'returns an object with the correct s3 object' do
          collection['foo'].object.should == object
        end

      end

      context '#latest' do
        it 'should return the first object with the correct key' do
          list = [
            double('version', :key => '/barfoo'),
            double('version', :key => '/bar'),
            double('version', :key => '/bar'),
            double('version', :key => '/barbar'),
          ]
          bucket.stub_chain(:versions, :with_prefix).and_return(list)
          collection.latest.should == list[1]
        end
      end

      context '#each' do

        it 'calls bucket versions to get a list of versions' do
          versions = double('versions', :with_prefix => [])
          versions.should_receive(:with_prefix)
          bucket.should_receive(:versions).and_return(versions)
          collection.each{|version| }
        end

        it 'rejects versions that dont have the same key' do
          list = [
            double('version', :key => '/bar'),
            double('version', :key => '/barfoo'),
            double('version', :key => '/bar'),
            double('version', :key => '/barbar'),
          ]
          bucket.stub_chain(:versions, :with_prefix).and_return(list)
          collection.collect{|v| v }.should == [list[0], list[2]]
        end

      end

    end

  end
end
