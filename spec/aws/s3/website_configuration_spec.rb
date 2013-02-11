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
    describe WebsiteConfiguration do

      context '#index_document_suffix' do

        it 'defaults to "index.html"' do
          config = WebsiteConfiguration.new
          config.index_document_suffix.should eq('index.html')
        end

        it 'can be set in the constructor' do
          config = WebsiteConfiguration.new(:index_document => { :suffix => 'a'})
          config.index_document_suffix.should eq('a')
        end

      end

      context '#error_document_key' do

        it 'defaults to "error.html"' do
          config = WebsiteConfiguration.new
          config.error_document_key.should eq('error.html')
        end

        it 'can be set in the constructor' do
          config = WebsiteConfiguration.new(:error_document => { :key => 'a'})
          config.error_document_key.should eq('a')
        end

      end

      context '#to_hash' do

        it 'returns the website configuration as a hash' do
          WebsiteConfiguration.new.to_hash.should eq({
            :index_document => { :suffix => 'index.html' },
            :error_document => { :key => 'error.html' },
          })
        end

      end

    end
  end
end
