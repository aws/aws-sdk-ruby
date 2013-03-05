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

    describe MultipartUploadCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bu', :config => config) }

      let(:collection) { MultipartUploadCollection.new(bucket, :config => config) }

      it_behaves_like "an S3 model object", Object.new

      it_behaves_like "enumerable"

      let(:list_method) { :list_multipart_uploads }

      it_behaves_like "an S3 tree-like collection"

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_uploads }

        def stub_markers(resp, value)
          resp.data[:next_key_marker] = "#{value}_key"
          resp.data[:next_upload_id_marker] = "#{value}_upload_id"
        end

        def expect_markers(client, value)
          client.should_receive(:list_multipart_uploads).
            with(hash_including(:key_marker => value+"_key",
                                :upload_id_marker => value+"_upload_id"))
        end

        def stub_members(resp, quantity)
          resp.data[:uploads] = [
            { :key => "foo", :upload_id => "abc123" },
            { :key => "bar", :upload_id => "123abc" },
          ]
        end

      end

      context '#initialize' do

        it 'should store the bucket' do
          described_class.new(bucket).bucket.should be(bucket)
        end

      end

      context '#each' do

        let(:resp) { client.new_stub_for(:list_multipart_uploads) }

        let(:response_uploads) {[
          { :key => "foo", :upload_id => "abc123" },
          { :key => "bar", :upload_id => "123abc" },
        ]}

        before(:each) do
          resp.data[:uploads] = response_uploads
          client.stub(:list_multipart_uploads).and_return(resp)
        end

        it 'should yield an upload object for each result' do
          collection.all? { |upload| upload.should be_a(MultipartUpload) }
          collection.map { |upload| upload.id }.should == ["abc123",
                                                           "123abc"]
          collection.map { |upload| upload.config }.uniq.should == [config]
        end

        it 'should pass the object' do
          collection.map { |upload| upload.object.key }.should == ["foo", "bar"]
          collection.map { |upload| upload.object.config }.uniq.
            should == [config]
        end

      end

    end

  end
end
