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
    describe Policy::Statement do

      it_should_behave_like 'generic policy statement'

      it_should_behave_like 'service specific policy statement' do

        context 'resource arns' do

          it 'prefixes bucket names' do
            statement.resources = ["mybucket"]
            statement.to_h["Resource"].should == ["arn:aws:s3:::mybucket"]
          end

          it 'prefixes buckets with key paths' do
            statement.resources = ["mybucket/mykey"]
            statement.to_h["Resource"].should == ["arn:aws:s3:::mybucket/mykey"]
          end

          it 'prefixes bucket objects' do
            bucket = Bucket.new('mybucket')
            statement.resources = [bucket]
            statement.to_h["Resource"].should == ["arn:aws:s3:::mybucket"]
          end

          it 'prefixes s3 objects' do
            bucket = Bucket.new('mybucket')
            s3object = S3Object.new(bucket, 'object/key')
            statement.resources = [s3object]
            statement.to_h["Resource"].should ==
              ["arn:aws:s3:::mybucket/object/key"]
          end

          it 'prefixes s3 object collections' do
            bucket = Bucket.new('mybucket')
            collection = bucket.objects.with_prefix('foo/bar')
            statement.resources = [collection]
            statement.to_h["Resource"].should ==
              ["arn:aws:s3:::mybucket/foo/bar*"]
          end

        end

      end

    end
  end
end
