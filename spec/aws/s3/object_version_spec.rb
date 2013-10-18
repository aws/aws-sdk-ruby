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
    describe ObjectVersion do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foo', :config => config) }

      let(:object) { S3Object.new(bucket, 'bar') }

      let(:version) { ObjectVersion.new(object, 'vid') }

      it_behaves_like('an S3 model object',
                      S3Object.new(Bucket.new("foo"), "bar"),
                      'version_id')

      it_behaves_like 'a resource object' do
        let(:identifiers) { ["foo", "bar", "vid"] }
        let(:constructor_args) { [object, "vid"] }
        let(:diff_object) { S3Object.new(bucket, "bar2") }
        let(:diff_bucket_object) { S3Object.new(Bucket.new("foo2"), "bar") }
        let(:comparison_instances) { [described_class.new(object, "vid2"),
                                      described_class.new(diff_object, "vid"),
                                      described_class.new(diff_bucket_object, "vid")] }
      end

      context '#initialize' do

        it 'accepts an object and a version_id' do
          lambda {
            ObjectVersion.new(object, 'version_id')
          }.should_not raise_error
        end

      end

      context '#url_for' do

        it 'calls #url_for on the object with a version id' do
          object.should_receive(:url_for).with(:read, :version_id => version.version_id)
          version.url_for(:read)
        end

      end

      context '#object' do
        it 'returns the s3 object' do
          version.object.should == object
        end
      end

      context '#bucket' do

        it 'returns the object bucket' do
          version.bucket.should be(bucket)
        end

      end

      context '#version_id' do
        it 'returns the version id' do
          version.version_id.should == 'vid'
        end
      end

      context '#latest' do

        it 'uses object.versions.latest to determine if latest' do
          ov = ObjectVersion.new(object, 'fake-version-id')
          object.stub_chain(:versions, :latest).and_return(ov)
          object.versions.should_receive(:latest)
          ov.latest?
        end

        it 'returns true if object.versions.latest is self' do
          object.stub_chain(:versions, :latest).and_return(version)
          version.latest?.should == true
        end

        it 'uses object.versions.latest to determine if latest' do
          ov = ObjectVersion.new(object, 'fake-version-id')
          object.stub_chain(:versions, :latest).and_return(ov)
          version.latest?.should == false
        end

      end

      context '#delete_marker' do

        it 'returns true if set as such' do
          v = ObjectVersion.new(object, 'version_id', :delete_marker => true)
          v.delete_marker?.should == true
        end

        it 'returns false if set as such' do
          v = ObjectVersion.new(object, 'version_id', :delete_marker => false)
          v.delete_marker?.should == false
        end

        it 'does not make a request if passed to #initialize' do
          client.should_not_receive(:head_object)
          v = ObjectVersion.new(object, 'version_id', :delete_marker => false)
          v.delete_marker?
        end

        it 'does makes a request if not passed to #initialize' do
          object.stub_chain(:metadata, :[]).and_return({})
          object.should_receive(:metadata)
          ObjectVersion.new(object, 'version_id').delete_marker?
        end

        it 'returns true if head_object raises a 405 client error' do
          req = double('request')
          resp = double('response',
                        :body => '',
                        :status => 405)
          error = Errors::MethodNotAllowed.new(req, resp)
          object.stub_chain(:metadata, :[]).and_raise(error)
          v = ObjectVersion.new(object, 'fake-version-id')
          v.delete_marker?.should == true
        end

        it 'returns false if head_object does not raise an error' do
          object.stub_chain(:metadata, :[]).and_return({})
          v = ObjectVersion.new(object, 'fake-version-id')
          v.delete_marker?.should == false
        end

      end

      context '#key' do

        it 'should return the same value as object#key' do
          version.key.should == object.key
        end

      end

      context '#metadata' do

        it 'should call metadata on the object with a version id' do
          object.should_receive(:metadata).with(:version_id => 'vid')
          version.metadata
        end

      end

      context '#delete' do

        it 'should call delete on the object with a version id' do
          object.should_receive(:delete).
            with(hash_including(:version_id => 'vid'))
          version.delete
        end

        it 'should call delete on the object with mfa credentials if specified' do
          object.should_receive(:delete).
            with(hash_including(:mfa => '123456 7890'))
          version.delete(:mfa => '123456 7890')
        end

      end

      context '#read' do

        it 'should call read on the object with a version id' do
          object.should_receive(:read).
            with(hash_including(:version_id => 'vid'))
          version.read
        end

      end

    end
  end
end
