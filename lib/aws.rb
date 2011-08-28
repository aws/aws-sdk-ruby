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

# AWS is the root module for all of the Amazon Web Services.  It is also 
# where you can configure you access to AWS.  
#
# = Supported Services
#
# The currently supported services are:
#
# * {EC2}
# * {S3}
# * {SimpleDB}
# * {SimpleEmailService}
# * {SNS}
# * {SQS}
#
# = AWS::Record
#
# In addition to the above services, bundled is an ORM based on AWS services
# See {AWS::Record} for more information.
#
# = Configuration
#
# You call {AWS.config} with a hash of options to configure your 
# access to the Amazon Web Services.  
#
# At a minimum you need to set your access credentials. See {AWS.config} 
# for additional configuration options.
#
#    AWS.config(
#      :access_key_id => 'ACCESS_KEY_ID',
#      :secret_access_key => 'SECRET_ACCESS_KEY') 
#
# == Rails
# 
# If you are loading AWS inside a Rails web application, place your
# configuration inside:
#
#   config/initializers/aws.rb
#

module AWS
  autoload :EC2,                'aws/ec2'
  autoload :S3,                 'aws/s3'
  autoload :SimpleDB,           'aws/simple_db'
  autoload :SNS,                'aws/sns'
  autoload :SQS,                'aws/sqs'
  autoload :IAM,                'aws/iam'
  autoload :STS,                'aws/sts'
  autoload :SimpleEmailService, 'aws/simple_email_service'
  autoload :Record,             'aws/record'
end

require 'aws/common'
require 'aws/rails'
