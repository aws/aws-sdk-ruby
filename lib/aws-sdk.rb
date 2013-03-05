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

require 'aws/core'

require 'aws/auto_scaling/config'
require 'aws/cloud_front/config'
require 'aws/cloud_formation/config'
require 'aws/cloud_search/config'
require 'aws/cloud_watch/config'
require 'aws/data_pipeline/config'
require 'aws/dynamo_db/config'
require 'aws/ec2/config'
require 'aws/elasticache/config'
require 'aws/elastic_beanstalk/config'
require 'aws/elastic_transcoder/config'
require 'aws/emr/config'
require 'aws/elb/config'
require 'aws/iam/config'
require 'aws/import_export/config'
require 'aws/glacier/config'
require 'aws/ops_works/config'
require 'aws/redshift/config'
require 'aws/rds/config'
require 'aws/route_53/config'
require 'aws/s3/config'
require 'aws/simple_db/config'
require 'aws/simple_email_service/config'
require 'aws/simple_workflow/config'
require 'aws/sns/config'
require 'aws/sqs/config'
require 'aws/storage_gateway/config'
require 'aws/sts/config'

module AWS
  register_autoloads(self) do
    autoload :AutoScaling, 'auto_scaling'
    autoload :CloudFormation, 'cloud_formation'
    autoload :CloudFront, 'cloud_front'
    autoload :CloudSearch, 'cloud_search'
    autoload :CloudWatch, 'cloud_watch'
    autoload :DataPipeline, 'data_pipeline'
    autoload :DynamoDB, 'dynamo_db'
    autoload :EC2, 'ec2'
    autoload :ElastiCache, 'elasticache'
    autoload :ElasticBeanstalk, 'elastic_beanstalk'
    autoload :ElasticTranscoder, 'elastic_transcoder'
    autoload :EMR, 'emr'
    autoload :ELB, 'elb'
    autoload :IAM, 'iam'
    autoload :ImportExport, 'import_export'
    autoload :Glacier, 'glacier'
    autoload :OpsWorks, 'ops_works'
    autoload :Redshift, 'redshift'
    autoload :RDS, 'rds'
    autoload :Route53, 'route_53'
    autoload :S3, 's3'
    autoload :SimpleDB, 'simple_db'
    autoload :SimpleEmailService, 'simple_email_service'
    autoload :SimpleWorkflow, 'simple_workflow'
    autoload :SNS, 'sns'
    autoload :SQS, 'sqs'
    autoload :StorageGateway, 'storage_gateway'
    autoload :STS, 'sts'
    autoload :Record, 'record'
  end
end

require 'aws/rails'
