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

    describe ObjectMetadata do

      it_behaves_like 'an S3 model object', Object.new

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foobucket', :config => config) }

      let(:object) { S3Object.new(bucket, 'foo') }

      let(:metadata) { ObjectMetadata.new(object) }

      let(:response) { double('response', :meta => { "color" => "blue" }) }

      before(:each) do
        client.stub(:head_object).and_return(response)
      end

      context '#[]' do

        context 'with a string' do

          it 'should call head_object on the client' do
            client.should_receive(:head_object).
              with(:bucket_name => "foobucket",
                   :key => "foo")
            metadata["color"]
          end

          it 'should return the value from the metadata hash' do
            metadata["color"].should == "blue"
          end

          it 'should return nil if there is no metadata entry' do
            metadata["kind"].should be_nil
          end

        end

        context 'with a symbol' do

          it 'should call head_object on the client' do
            client.should_receive(:head_object).
              with(:bucket_name => "foobucket",
                   :key => "foo")
            metadata[:color]
          end

          it 'should return the value from the metadata hash' do
            metadata[:color].should == "blue"
          end

          it 'should return nil if there is no metadata entry' do
            metadata[:kind].should be_nil
          end

        end

      end

      context '#[]=' do

        it 'should call copy_object with the full, modified metadata and key' do
          metadata.stub(:to_h).and_return("color" => "red",
                                          "shape" => "square")
          client.should_receive(:copy_object).
            with(hash_including(:copy_source => "foobucket/foo",
                                :bucket_name => "foobucket",
                                :key => "foo",
                                :metadata_directive => "REPLACE",
                                :metadata => {
                                  "color" => "red",
                                  "shape" => "circle"
                                }))
          metadata["shape"] = "circle"
        end

        it 'should work with symbol keys' do
          metadata.stub(:to_h).and_return("color" => "red",
                                          "shape" => "square")
          client.should_receive(:copy_object).
            with(hash_including(:copy_source => "foobucket/foo",
                                :bucket_name => "foobucket",
                                :key => "foo",
                                :metadata_directive => "REPLACE",
                                :metadata => {
                                  "color" => "red",
                                  "shape" => "circle"
                                }))
          metadata[:shape] = "circle"
        end

        it 'should return the value that was set' do
          metadata.send(:[]=, :shape, "circle").should == "circle"
        end

        it 'should raise an error if the version ID is set' do
          metadata = ObjectMetadata.new(object, :version_id => "abc123")
          lambda { metadata[:shape] = "circle" }.
            should raise_error(/cannot change the metadata of an object version/)
        end

      end

      context '#method_missing' do

        it 'should call head_object on the client' do
          client.should_receive(:head_object).
            with(:bucket_name => "foobucket",
                 :key => "foo")
          metadata.color
        end

        it 'should return the value from the metadata hash' do
          metadata.color.should == "blue"
        end

        it 'should return nil if there is no metadata entry' do
          metadata.kind.should be_nil
        end

        it 'should not apply to method calls with arguments' do
          lambda { metadata.foo(2) }.should raise_error(NoMethodError)
        end

        it 'should not apply to method calls with blocks' do
          lambda { metadata.foo { 2 } }.should raise_error(NoMethodError)
        end

      end

      context '#to_h' do

        it 'returns the metadata hash from the response' do
          metadata.to_h.should == response.meta
        end

      end

    end

  end
end
