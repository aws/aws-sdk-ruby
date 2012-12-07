# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    describe WebsiteConfiguration do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bucket-name', :config => config) }

      let(:website) { WebsiteConfiguration.new(bucket) }

      context '#set' do

        it 'accepts a hash' do
          config = {
            :index_document => 'index.html',
            :error_document => 'error.html'
          }

          client.should_receive(:put_bucket_website).with(
            :bucket_name => bucket.name,
            :index_document => 'index.html',
            :error_document => 'error.html')

          website.set(config)
        end

        it 'clears the rules when passed an empty hash' do
          client.should_receive(:delete_bucket_website)
          website.set({})
        end
        
        it 'clears the rules when passed an nil obkect' do
          client.should_receive(:delete_bucket_website)
          website.set(nil)
        end

      end

      context '#delete' do

        it 'calls #delete_bucket_cors on the client' do

          client.should_receive(:delete_bucket_website).
            with(:bucket_name => bucket.name)
          website.delete

        end

      end

      context '#index_document' do

        it 'sets the index document' do
          
          client.should_receive(:put_bucket_website).with(
            :bucket_name => bucket.name,
            :index_document => 'default.html',
            :error_document => nil)
            
          website.index_document = 'default.html'
        end

      end
      
      context '#error_document' do
      
        it 'sets the error document' do
          
          client.should_receive(:put_bucket_website).with(
            :bucket_name => bucket.name,
            :index_document => nil,
            :error_document => '404.html')
            
          website.error_document = '404.html'
        end
      
      end

    end
  end
end
