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
require 'tempfile'

module AWS
  class S3

    describe UploadedPart do

      it_behaves_like('an S3 model object',
                      MultipartUpload.new(S3Object.new(Bucket.new("foo"),
                                                       "bar"),
                                          "abc123"),
                      1)

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foobucket', :config => config) }

      let(:object) { S3Object.new(bucket, 'foo') }

      let(:upload) { MultipartUpload.new(object, "abc123") }

      let(:part) { UploadedPart.new(upload, 3) }

      context '#initialize' do

        it 'should store the upload' do
          part.upload.should be(upload)
        end

        it 'should store the part number' do
          part.part_number.should == 3
        end

      end

      context '#==' do

        context 'same class' do

          it 'should return true if the upload and part number match' do
            part.should == described_class.new(upload, 3)
          end

          it 'should return false if the upload does not match' do
            other_upload = MultipartUpload.new(object, "123abc")
            part.should_not == described_class.new(other_upload, 3)
          end

          it 'should return false if the part number does not match' do
            part.should_not == described_class.new(upload, 12)
          end

        end

        context 'different class' do

          it 'should return false' do
            imposter_class = Class.new(DelegateClass(described_class)) do
              define_method(:upload) { upload }
              define_method(:part_number) { 3 }
            end
            part.should_not == imposter_class.new(part)
          end

        end

      end

      shared_examples_for "s3 uploaded part attribute accessor" do

        let(:resp) { client.stub_for(:list_parts) }

        let(:response_part) { double("part",
                                     :part_number => 3) }

        before(:each) do
          resp.stub(:parts).and_return([response_part])
          response_part.stub(response_field).and_return(response_value)
          client.stub(:list_parts).and_return(resp)
        end

        it 'should call list_parts' do
          client.should_receive(:list_parts).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123",
                 :part_number_marker => 2,
                 :max_parts => 1).
            and_return(resp)
          part.send(attribute)
        end

        it 'should use the first returned part if the number matches' do
          part.send(attribute).should == response_value
        end

        it 'should raise an error if the part number does not match' do
          response_part.stub(:part_number).and_return(4)
          lambda { part.send(attribute) }.
            should raise_error("part 3 of upload abc123 does not exist")
        end

        it 'should raise an error if no parts are returned' do
          resp.stub(:parts).and_return([])
          lambda { part.send(attribute) }.
            should raise_error("part 3 of upload abc123 does not exist")
        end

      end

      context '#size' do
        let(:attribute) { :size }
        let(:response_field) { attribute }
        let(:response_value) { 12 }
        it_should_behave_like "s3 uploaded part attribute accessor"
      end

      context '#last_modified' do
        let(:attribute) { :last_modified }
        let(:response_field) { attribute }
        let(:response_value) { Time.now }
        it_should_behave_like "s3 uploaded part attribute accessor"
      end

      context '#etag' do
        let(:attribute) { :etag }
        let(:response_field) { attribute }
        let(:response_value) { '"foo"' }
        it_should_behave_like "s3 uploaded part attribute accessor"
      end

    end

  end
end
