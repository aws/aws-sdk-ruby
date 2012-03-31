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

require 'aws/core'

require 'aws/auto_scaling/config'
require 'aws/dynamo_db/config'
require 'aws/ec2/config'
require 'aws/elb/config'
require 'aws/iam/config'
require 'aws/s3/config'
require 'aws/simple_db/config'
require 'aws/simple_email_service/config'
require 'aws/simple_workflow/config'
require 'aws/sns/config'
require 'aws/sqs/config'
require 'aws/sts/config'

module AWS
  register_autoloads(self) do
    autoload :AutoScaling, 'auto_scaling'
    autoload :DynamoDB, 'dynamo_db'
    autoload :EC2, 'ec2'
    autoload :ELB, 'elb'
    autoload :IAM, 'iam'
    autoload :S3, 's3'
    autoload :SimpleDB, 'simple_db'
    autoload :SimpleEmailService, 'simple_email_service'
    autoload :SimpleWorkflow, 'simple_workflow'
    autoload :SNS, 'sns'
    autoload :SQS, 'sqs'
    autoload :STS, 'sts'
    autoload :Record, 'record'
  end
end

require 'aws/rails'
