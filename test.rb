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

require 'bundler/setup'
require 'aws-sdk-core'
require 'pp'

swf = Aws::SWF::Client.new
ddb = Aws::DynamoDB::Client.new
emr = Aws::EMR::Client.new
cloudfront = Aws::CloudFront::Client.new
s3 = Aws::S3::Client.new
opsworks = Aws::OpsWorks::Client.new
ec2 = Aws::EC2::Client.new

#resp = s3.put_object Bucket: 'lorenfoo', Key: 'foo', Body: 'hello', ContentType: 'text/plain'
#pp resp.http_request
# resp = s3.get_object Bucket: 'lorenfoo', Key: 'foo'
#pp resp.data

#pp s3.put_bucket_logging

# cloudfront.create_distribution2013_05_12(DistributionConfig: {
#   CallerReference: "Foo",
#   Enabled: true,
#   Aliases: {
#     Quantity: 1,
#     Items: [
#       "Foo", "Bar", "Baz"
#     ]
#   }
# }).data

# pp opsworks.describe_stacks.data

pp ec2.describe_instances.data
pp swf.list_domains(registration_status: 'DEPRECATED').data
pp ddb.list_tables.data
