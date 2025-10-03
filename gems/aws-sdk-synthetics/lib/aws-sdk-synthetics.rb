# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Synthetics', Module.new) unless Aws.const_defined?('Synthetics')

# @title Synthetics
# <fullname>Amazon CloudWatch Synthetics</fullname>
#          <p>You can use Amazon CloudWatch Synthetics to continually monitor your services. You can
#          create and manage <i>canaries</i>, which are modular, lightweight scripts 
#          that monitor your endpoints and APIs
#             from the outside-in. You can set up your canaries to run
#          24 hours a day, once per minute. The canaries help you check the availability and latency
#          of your web services and troubleshoot anomalies by investigating load time data,
#          screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch
#          ServiceLens to help you trace the causes of impacted nodes in your applications. For more
#          information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html">Using ServiceLens to Monitor
#             the Health of Your Applications</a> in the <i>Amazon CloudWatch User
#             Guide</i>.</p>
#          <p>Before you create and manage canaries, be aware of the security considerations. For more
#          information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
#             Considerations for Synthetics Canaries</a>.</p>
module Aws::Synthetics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-synthetics/types'
require_relative 'aws-sdk-synthetics/paginators'
require_relative 'aws-sdk-synthetics/schema'
require_relative 'aws-sdk-synthetics/auth_parameters'
require_relative 'aws-sdk-synthetics/auth_resolver'
require_relative 'aws-sdk-synthetics/client'
require_relative 'aws-sdk-synthetics/customizations'
require_relative 'aws-sdk-synthetics/errors'
require_relative 'aws-sdk-synthetics/endpoint_parameters'
require_relative 'aws-sdk-synthetics/endpoint_provider'
require_relative 'aws-sdk-synthetics/waiters'
