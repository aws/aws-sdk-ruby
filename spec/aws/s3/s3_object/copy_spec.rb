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

    describe S3Object do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket1) { Bucket.new('bucket-1', :config => config) }

      let(:bucket2) { Bucket.new('bucket-2', :config => config) }

      let(:obj1) { S3Object.new(bucket1, 'key-1') }

      let(:obj2) { S3Object.new(bucket2, 'key-2') }

      let(:obj1_copy_source) { "#{obj1.bucket.name}/#{obj1.key}" }

      let(:obj2_copy_source) { "#{obj2.bucket.name}/#{obj2.key}" }

      context '#copy_from' do

        it 'calls copy_object on the client' do
          client.should_receive(:copy_object).
            with(:bucket_name => obj1.bucket.name,
                 :key => obj1.key,
                 :copy_source => 'bucket-1/key',
                 :metadata_directive => 'COPY',
                 :storage_class => "STANDARD")
          obj1.copy_from('key')
        end

        it 'accepts a key string and defaults bucket to same bucket' do
          client.should_receive(:copy_object).with(hash_including(
            :copy_source => 'bucket-1/some/key'))
          obj1.copy_from('some/key')
        end

        it 'accepts a key string and a bucket' do
          client.should_receive(:copy_object).with(hash_including(
            :copy_source => 'bucket-2/some/key'))
          obj1.copy_from('some/key', :bucket => bucket2)
        end

        it 'accepts a key string and a bucket name' do
          client.should_receive(:copy_object).with(hash_including(
            :copy_source => 'bucketname/some/key'))
          obj1.copy_from('some/key', :bucket_name => 'bucketname')
        end

        it 'accepts s3 objects' do
          client.should_receive(:copy_object).with(hash_including(
            :copy_source => obj2_copy_source))
          obj1.copy_from(obj2)
        end

        it 'defaults metadata directive to COPY' do
          client.should_receive(:copy_object).
            with(hash_including(:metadata_directive => 'COPY'))
          obj1.copy_from('bucket/key')
        end

        it 'allows you to change the metadata' do
          client.should_receive(:copy_object).with(hash_including(
            :metadata_directive => 'REPLACE',
            :metadata => { 'foo' => 'bar' }
          ))
          obj1.copy_from('bucket/key', :metadata => { 'foo' => 'bar' })
        end

        it 'allows you to change content disposition' do
          client.should_receive(:copy_object).with(hash_including(
            :metadata_directive => 'REPLACE',
            :content_disposition => "inline"
          ))
          obj1.copy_from("bucket/key", :content_disposition => "inline")
        end

        it 'allows you to change content type' do
          client.should_receive(:copy_object).with(hash_including(
            :metadata_directive => 'REPLACE',
            :content_type => "image/png"
          ))
          obj1.copy_from("bucket/key", :content_type => "image/png")
        end

        it 'allows you to store the copied object with reduced redundancy' do
          client.should_receive(:copy_object).with(hash_including(
            :storage_class => 'REDUCED_REDUNDANCY'))
          obj1.copy_from('bucket/key', :reduced_redundancy => true)
        end

        it 'allows you to set a canned ACL' do
          client.should_receive(:copy_object).
            with(hash_including(:acl => :public_read))
          obj1.copy_from('bucket/key', :acl => :public_read)
        end

        context ':server_side_encryption option' do

          it 'allows you to specify a value' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :aes256))
            obj1.copy_from('bucket/key', :server_side_encryption => :aes256)
          end

          it 'uses the configured value by default' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :aes256))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_from('bucket/key')
          end

          it 'allows you to override the configured value' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :foobar))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_from('bucket/key', :server_side_encryption => :foobar)
          end

          it 'allows you to override the configured value with nil' do
            client.should_receive(:copy_object).
              with(hash_not_including(:server_side_encryption))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_from('bucket/key', :server_side_encryption => nil)
          end

        end

        it 'allows you copy an objects version by version id' do
          client.should_receive(:copy_object).with(hash_including(
            :version_id => 'abc'))
          obj1.copy_from('bucket/key', :version_id => 'abc')
        end

        it 'allows you to copy a versioned object' do
          version = ObjectVersion.new(obj2, 'abc', :config => config)
          client.should_receive(:copy_object).with(hash_including(
            :copy_source => "#{version.object.bucket.name}/#{version.object.key}",
            :version_id => 'abc'))
          obj1.copy_from(version)
        end

      end

      context '#copy_to' do

        it 'calls copy_object on the client' do
          client.should_receive(:copy_object).
            with(:bucket_name => obj1.bucket.name,
                 :key => 'key',
                 :copy_source => 'bucket-1/key-1',
                 :metadata_directive => 'COPY',
                 :storage_class => "STANDARD")
          obj1.copy_to('key')
        end

        it 'accepts a key string and defaults bucket to same bucket' do
          client.should_receive(:copy_object).with(hash_including(
            :bucket_name => 'bucket-1',
            :key => 'some/key'))
          obj1.copy_to('some/key')
        end

        it 'returns the copied/target object' do
          copy = obj1.copy_to('new/key', :bucket_name => 'new-bucket')
          copy.key.should == 'new/key'
          copy.bucket.name.should == 'new-bucket'
        end

        it 'accepts a key string and a bucket' do
          client.should_receive(:copy_object).with(hash_including(
            :bucket_name => 'bucket-2',
            :key => 'some/key'))
          obj1.copy_to('some/key', :bucket => bucket2)
        end

        it 'accepts a key string and a bucket name' do
          client.should_receive(:copy_object).with(hash_including(
            :bucket_name => 'bucketname',
            :key => 'some/key'))
          obj1.copy_to('some/key', :bucket_name => 'bucketname')
        end

        it 'accepts s3 objects' do
          client.should_receive(:copy_object).with(hash_including(
            :bucket_name => 'bucket-2',
            :key => 'key-2',
            :copy_source => obj1_copy_source))
          obj1.copy_to(obj2)
        end

        it 'defaults metadata directive to COPY' do
          client.should_receive(:copy_object).
            with(hash_including(:metadata_directive => 'COPY'))
          obj1.copy_to('bucket/key')
        end

        it 'allows you to change the metadata' do
          client.should_receive(:copy_object).with(hash_including(
            :metadata_directive => 'REPLACE',
            :metadata => { 'foo' => 'bar' }
          ))
          obj1.copy_to('bucket/key', :metadata => { 'foo' => 'bar' })
        end

        it 'allows you to store the copied object with reduced redundancy' do
          client.should_receive(:copy_object).with(hash_including(
            :storage_class => 'REDUCED_REDUNDANCY'))
          obj1.copy_to('bucket/key', :reduced_redundancy => true)
        end

        it 'allows you to set a canned ACL' do
          client.should_receive(:copy_object).
            with(hash_including(:acl => :public_read))
          obj1.copy_to('bucket/key', :acl => :public_read)
        end

        context ':server_side_encryption option' do

          it 'allows you to specify a value' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :aes256))
            obj1.copy_to('bucket/key', :server_side_encryption => :aes256)
          end

          it 'uses the configured value by default' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :aes256))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_to('bucket/key')
          end

          it 'allows you to override the configured value' do
            client.should_receive(:copy_object).
              with(hash_including(:server_side_encryption => :foobar))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_to('bucket/key', :server_side_encryption => :foobar)
          end

          it 'allows you to override the configured value with nil' do
            client.should_receive(:copy_object).
              with(hash_not_including(:server_side_encryption))
            obj1.config.stub(:s3_server_side_encryption => :aes256)
            obj1.copy_to('bucket/key', :server_side_encryption => nil)
          end

        end

      end

      context '#move_to' do

        it 'calls #copy_to followed by #delete' do
          obj1.should_receive(:copy_to).with('new-key', {})
          obj1.move_to('new-key')
        end

        it 'returns a new object (where it was copied to)' do
          obj1.move_to('key-2').should == S3Object.new(bucket1, 'key-2')
        end

        it 'can be used to copy across buckets' do
          obj2 = obj1.move_to('new-key', :bucket_name => 'new-bucket')
          obj2.key.should == 'new-key'
          obj2.bucket.name.should == 'new-bucket'
        end

      end

    end
  end
end
