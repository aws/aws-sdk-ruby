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

    describe BucketCollection do

      it_behaves_like 'an S3 model object'

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:buckets) { BucketCollection.new(:config => config) }

      context '#create' do

        it 'should call create_bucket with the bucket name' do
          client.should_receive(:create_bucket).with(:bucket_name => 'bar')
          buckets.create('bar')
        end

        it 'should return an S3 bucket' do
          buckets.create('bar').should be_an(S3::Bucket)
        end

        it 'should return a bucket with the correct config' do
          buckets.create('bar').config.should == buckets.config
        end

        it 'passes additional options to base client' do
          client.should_receive(:create_bucket).
            with(:bucket_name => 'name', :foo => 'bar')
          buckets.create('name', :foo => 'bar')
        end

        it 'passes the acl option to #create_bucket as a string' do
          client.should_receive(:create_bucket).with(hash_including({
            :acl => 'public-read',
          }))
          buckets.create('name', :acl => :public_read)
        end

        it 'passes the grant options to #create_bucket' do

          client.should_receive(:create_bucket).with(hash_including({
            :grant_read => 'read',
            :grant_write => 'write',
            :grant_read_acp => 'read-acp',
            :grant_write_acp => 'read-acp',
            :grant_full_control => 'full-control',
          }))

          buckets.create('name',
            :grant_read => 'read',
            :grant_write => 'write',
            :grant_read_acp => 'read-acp',
            :grant_write_acp => 'read-acp',
            :grant_full_control => 'full-control')

        end

        it 'sets no location constraint by default' do
          config.stub(:s3_endpoint).and_return('s3.amazonaws.com')
          buckets.client.should_receive(:create_bucket).with(:bucket_name => 'name')
          buckets.create('name')
        end

        it 'sets the location constraint to EU when using the eu endpoint' do
          config.stub(:s3_endpoint).and_return('s3-eu-west-1.amazonaws.com')
          buckets.client.should_receive(:create_bucket).
            with(hash_including(:location_constraint => 'EU'))
          buckets.create('name')
        end

        it 'will not override location constraints set explicitly' do

          # location constraint should be EU
          config.stub(:s3_endpoint).
            and_return('s3-eu-west-1.amazonaws.com')

          buckets.client.should_receive(:create_bucket).
            with(hash_including(:location_constraint => 'eek!'))

          buckets.create('name', :location_constraint => 'eek!')

        end

        it 'guesses the location constraint for other endpoints' do

          config.stub(:s3_endpoint).and_return('s3-fake-2.amazonaws.com')

          buckets.client.should_receive(:create_bucket).
            with(hash_including(:location_constraint => 'fake-2'))

          buckets.create('name')
        end

        it 'leaves off the location constraint for non-standard endpoint names' do

          config.stub(:s3_endpoint).and_return('s3.foo.bar.com')

          buckets.client.should_receive(:create_bucket).
            with(hash_not_including(:location_constraint))

          buckets.create('name')
        end

      end

      context '#each' do

        let(:bucket) { double("response bucket",
                              :name => "foo") }

        let(:owner) { double("response owner") }

        let(:response) { double("list buckets response",
                                :owner => owner,
                                :buckets => [bucket]) }

        before(:each) do
          client.stub(:list_buckets).and_return(response)
        end

        it 'should call list_buckets' do
          client.should_receive(:list_buckets).and_return response
          buckets.each { |b| }
        end

        it 'should yield a bucket object for each item in the response' do
          got_buckets = []
          buckets.each { |b| got_buckets << b }
          got_buckets.should have(1).item
          got_buckets.first.should be_an(S3::Bucket)
          got_buckets.first.name.should == "foo"
        end

        it 'should pass the name, owner and config to the bucket constructor' do
          S3::Bucket.should_receive(:new).with("foo",
                                               :config => config,
                                               :owner => owner)
          buckets.each { |b| }
        end

      end

    end

  end
end
