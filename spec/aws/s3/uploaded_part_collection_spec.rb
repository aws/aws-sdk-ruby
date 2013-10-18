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

      let(:object) { S3Object.new(bucket, 'foo') }

      let(:upload) { MultipartUpload.new(object, "abc123") }

      let(:collection) { UploadedPartCollection.new(upload) }

      it_behaves_like "an S3 model object", Object.new

      it_behaves_like "enumerable"

      let(:list_method) { :list_parts }

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_parts }

        def stub_markers(resp, value)
          resp.data[:next_part_number_marker] = value
        end

        def expect_markers(client, value)
          client.should_receive(:list_parts).
            with(hash_including(:part_number_marker => value))
        end

        def stub_members(resp, quantity)
          resp.data[:parts] = [
            { :part_number => 1, :etag => '1' },
            { :part_number => 2, :etag => '2' },
          ].first(quantity)
        end

      end

      context '#initialize' do

        it 'should store the upload' do
          collection.upload.should be(upload)
        end

      end

      context '#each' do

        let(:resp) { client.new_stub_for(:list_parts) }

        let(:response_parts) {[
          { :part_number => 1, :etag => '1', },
          { :part_number => 2, :etag => '2', },
        ]}

        before(:each) do
          resp.data[:parts] = response_parts
          client.stub(:list_parts).and_return(resp)
        end

        it 'should pass the required parameters to list_parts' do
          client.should_receive(:list_parts).
            with(hash_including(:bucket_name => "bu",
                                :key => "foo",
                                :upload_id => "abc123"))
          collection.each { |part| }
        end

        it 'should yield an uploaded part object for each result' do
          collection.all? { |part| part.should be_a(UploadedPart) }
          collection.map { |part| part.part_number }.should == [1, 2]
          collection.map { |part| part.config }.uniq.should == [config]
        end

        it 'should pass the upload' do
          collection.all? { |part| part.upload.should == upload }
        end

      end

      context '#[]' do

        it 'should return a part with the correct upload and number' do
          part = collection[1]
          part.part_number.should == 1
          part.upload.should be(upload)
          part.config.should be(config)
        end

      end

    end

  end
end
