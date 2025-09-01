# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EMRcontainers', Module.new) unless Aws.const_defined?('EMRcontainers')

# @title Amazon EMR Containers
# <p>Amazon EMR on EKS provides a deployment option for Amazon EMR that allows
#          you to run open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon EKS).
#          With this deployment option, you can focus on running analytics workloads while Amazon EMR on EKS builds, configures, and manages containers for open-source applications.
#          For more information about Amazon EMR on EKS concepts and tasks, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html">What is
#             Amazon EMR on EKS</a>.</p>
#          <p>
#             <i>Amazon EMR containers</i> is the API name for Amazon EMR on EKS. The <code>emr-containers</code> prefix is used in the following
#          scenarios: </p>
#          <ul>
#             <li>
#                <p>It is the prefix in the CLI commands for Amazon EMR on EKS. For example,
#                   <code>aws emr-containers start-job-run</code>.</p>
#             </li>
#             <li>
#                <p>It is the prefix before IAM policy actions for Amazon EMR on EKS. For
#                example, <code>"Action": [ "emr-containers:StartJobRun"]</code>. For more
#                information, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions">Policy actions for Amazon EMR on EKS</a>.</p>
#             </li>
#             <li>
#                <p>It is the prefix used in Amazon EMR on EKS service endpoints. For example,
#                   <code>emr-containers.us-east-2.amazonaws.com</code>. For more information, see
#                   <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints">Amazon EMR on EKSService Endpoints</a>.</p>
#             </li>
#          </ul>
module Aws::EMRcontainers
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-emrcontainers/types'
require_relative 'aws-sdk-emrcontainers/paginators'
require_relative 'aws-sdk-emrcontainers/schema'
require_relative 'aws-sdk-emrcontainers/auth_parameters'
require_relative 'aws-sdk-emrcontainers/auth_resolver'
require_relative 'aws-sdk-emrcontainers/client'
require_relative 'aws-sdk-emrcontainers/customizations'
require_relative 'aws-sdk-emrcontainers/errors'
require_relative 'aws-sdk-emrcontainers/endpoint_parameters'
require_relative 'aws-sdk-emrcontainers/endpoint_provider'
require_relative 'aws-sdk-emrcontainers/waiters'
