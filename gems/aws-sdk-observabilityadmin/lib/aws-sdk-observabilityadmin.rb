# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ObservabilityAdmin', Module.new) unless Aws.const_defined?('ObservabilityAdmin')

# @title CloudWatch Observability Admin Service
# <p>
#       You can use Amazon CloudWatch Observability Admin to discover and understand the state of telemetry configuration in CloudWatch for your Amazon Web Services Organization or account. This simplifies the process of auditing your telemetry collection configurations across multiple resource types within your Amazon Web Services Organization or account. By providing a consolidated view, it allows you to easily review and manage telemetry settings, helping you ensure proper monitoring and data collection across your Amazon Web Services environment. 
#       For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html">Auditing CloudWatch telemetry conﬁgurations</a> in the CloudWatch User Guide.</p>
#          <p>For information on the permissions you need to use this API, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html">Identity and access management for Amazon CloudWatch</a> in the CloudWatch User Guide.</p>
module Aws::ObservabilityAdmin
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-observabilityadmin/types'
require_relative 'aws-sdk-observabilityadmin/paginators'
require_relative 'aws-sdk-observabilityadmin/schema'
require_relative 'aws-sdk-observabilityadmin/auth_parameters'
require_relative 'aws-sdk-observabilityadmin/auth_resolver'
require_relative 'aws-sdk-observabilityadmin/client'
require_relative 'aws-sdk-observabilityadmin/customizations'
require_relative 'aws-sdk-observabilityadmin/errors'
require_relative 'aws-sdk-observabilityadmin/endpoint_parameters'
require_relative 'aws-sdk-observabilityadmin/endpoint_provider'
require_relative 'aws-sdk-observabilityadmin/waiters'
