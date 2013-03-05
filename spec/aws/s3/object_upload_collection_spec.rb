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

    describe ObjectUploadCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bu', :config => config) }

      let(:object) { S3Object.new(bucket, 'foo') }

      let(:collection) { ObjectUploadCollection.new(object) }

      it_behaves_like "an S3 model object", S3Object.new(Bucket.new('bu'),
                                                         'foo')

      it_behaves_like "enumerable"

      let(:list_method) { :list_multipart_uploads }

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_uploads }

        def stub_markers(resp, value)
          resp.data[:next_key_marker] = value + "_key"
          resp.data[:next_upload_id_marker] = value + "_upload_id"
        end

        def expect_markers(client, value)
          client.should_receive(:list_multipart_uploads).
            with(hash_including(:key_marker => value+"_key",
                                :upload_id_marker => value+"_upload_id"))
        end

        def stub_members(resp, quantity)
          resp.data[:uploads] = [
            { :key => 'foo', :upload_id => 'abc123' },
            { :key => 'bar', :upload_id => '123abc' },
          ].first(quantity)
        end

      end

      context '#initialize' do

        it 'should store the object' do
          described_class.new(object).object.should be(object)
        end

      end

      context '#create' do

        before(:each) do
          client.stub(:initiate_multipart_upload).
            and_return(double("response",
                              :upload_id => "abc123"))
          client.stub(:abort_multipart_upload)
        end

        it 'should initiate a multipart upload' do
          client.should_receive(:initiate_multipart_upload).
            with(:bucket_name => "bu",
                 :key => "foo").
            and_return(double("response",
                              :upload_id => "abc123"))
          collection.create
        end

        it 'should pass additional options to the initiate call' do
          client.should_receive(:initiate_multipart_upload).
            with(hash_including(:content_type => "application/json")).
            and_return(double("response",
                              :upload_id => "abc123"))
          collection.create(:content_type => "application/json")
        end

        it 'should interpret :reduced_redundancy' do
          client.should_receive(:initiate_multipart_upload).
            with(hash_including(:storage_class => :reduced_redundancy)).
            and_return(double("response",
                              :upload_id => "abc123"))
          client.should_not_receive(:initiate_multipart_upload).
            with(hash_including(:reduced_redundancy => true))
          collection.create(:reduced_redundancy => true)
        end

        it 'should return the upload object' do
          collection.create.should be_a(MultipartUpload)
        end

        it 'should pass the S3Object to the upload object' do
          collection.create.object.should == object
        end

        it 'should pass the config' do
          collection.create.config.should be(config)
        end

      end

      context '#each' do

        let(:resp) { client.new_stub_for(:list_multipart_uploads) }

        let(:response_uploads) { [double("upload 1",
                                         :key => "foo",
                                         :upload_id => "abc123"),
                                  double("upload 2",
                                         :key => "foo",
                                         :upload_id => "123abc"),
                                  double("upload 3",
                                         :key => "foobar",
                                         :upload_id => "def456")] }

        before(:each) do
          resp.stub(:uploads).and_return(response_uploads)
          client.stub(:list_multipart_uploads).and_return(resp)
        end

        it 'returns nil' do
          collection.each{|upload|}.should == nil
        end

        it 'should yield upload objects' do
          collection.all? { |upload| upload.should be_a(MultipartUpload) }
        end

        it 'should only yield uploads with the same key as the object' do
          collection.map { |upload| upload.id }.should == ["abc123",
                                                           "123abc"]
        end

        it 'should pass the object' do
          collection.all? { |upload| upload.object.should == object }
        end

        it 'should use the object key as a prefix' do
          client.should_receive(:list_multipart_uploads).
            with(hash_including(:prefix => 'foo')).
            and_return(resp)
          collection.each { |upload| }
        end

      end

      context '#[]' do

        it 'should return an upload object' do
          collection["abc123"].should be_a(MultipartUpload)
        end

        it 'should pass the object' do
          collection["abc123"].object.should be(object)
        end

        it 'should pass the config' do
          collection["abc123"].config.should be(config)
        end

        it 'should pass the upload id' do
          collection["abc123"].id.should == "abc123"
        end

      end

    end

  end
end
