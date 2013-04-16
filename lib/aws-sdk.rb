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
require 'aws/cloud_formation/config'
require 'aws/cloud_front/config'
require 'aws/cloud_search/config'
require 'aws/cloud_watch/config'
require 'aws/data_pipeline/config'
require 'aws/direct_connect/config'
require 'aws/dynamo_db/config'
require 'aws/ec2/config'
require 'aws/elasticache/config'
require 'aws/elastic_beanstalk/config'
require 'aws/elastic_transcoder/config'
require 'aws/elb/config'
require 'aws/emr/config'
require 'aws/glacier/config'
require 'aws/iam/config'
require 'aws/import_export/config'
require 'aws/ops_works/config'
require 'aws/rds/config'
require 'aws/redshift/config'
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

  # services
  autoload :AutoScaling, 'aws/auto_scaling'
  autoload :CloudFormation, 'aws/cloud_formation'
  autoload :CloudFront, 'aws/cloud_front'
  autoload :CloudSearch, 'aws/cloud_search'
  autoload :CloudWatch, 'aws/cloud_watch'
  autoload :DataPipeline, 'aws/data_pipeline'
  autoload :DirectConnect, 'aws/direct_connect'
  autoload :DynamoDB, 'aws/dynamo_db'
  autoload :EC2, 'aws/ec2'
  autoload :ElastiCache, 'aws/elasticache'
  autoload :ElasticBeanstalk, 'aws/elastic_beanstalk'
  autoload :ElasticTranscoder, 'aws/elastic_transcoder'
  autoload :ELB, 'aws/elb'
  autoload :EMR, 'aws/emr'
  autoload :Glacier, 'aws/glacier'
  autoload :IAM, 'aws/iam'
  autoload :ImportExport, 'aws/import_export'
  autoload :OpsWorks, 'aws/ops_works'
  autoload :RDS, 'aws/rds'
  autoload :Redshift, 'aws/redshift'
  autoload :Route53, 'aws/route_53'
  autoload :S3, 'aws/s3'
  autoload :SimpleDB, 'aws/simple_db'
  autoload :SimpleEmailService, 'aws/simple_email_service'
  autoload :SimpleWorkflow, 'aws/simple_workflow'
  autoload :SNS, 'aws/sns'
  autoload :SQS, 'aws/sqs'
  autoload :StorageGateway, 'aws/storage_gateway'
  autoload :STS, 'aws/sts'

  autoload :Record, 'aws/record'

end

require 'aws/rails'
