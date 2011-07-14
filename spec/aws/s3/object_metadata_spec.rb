# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

      let(:client) { double("s3-client") }

      let(:config) { Configuration.new(:s3_client => client) }

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

      end

      context '#to_h' do
        
        it 'returns the metadata hash from the response' do
          metadata.to_h.should == response.meta
        end

      end

    end

  end
end
