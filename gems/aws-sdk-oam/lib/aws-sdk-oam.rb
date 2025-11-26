# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('OAM', Module.new) unless Aws.const_defined?('OAM')

# @title CloudWatch Observability Access Manager
# <p>Use Amazon CloudWatch Observability Access Manager to create and manage links between source accounts and monitoring accounts by using <i>CloudWatch cross-account observability</i>. With CloudWatch cross-account observability, you can monitor and troubleshoot applications that span multiple accounts within a Region. Seamlessly search, visualize, and analyze your metrics, logs, traces, Application Signals services and service level objectives (SLOs), Application Insights applications, and internet monitors in any of the linked accounts without account boundaries.</p> <p>Set up one or more Amazon Web Services accounts as <i>monitoring accounts</i> and link them with multiple <i>source accounts</i>. A monitoring account is a central Amazon Web Services account that can view and interact with observability data generated from source accounts. A source account is an individual Amazon Web Services account that generates observability data for the resources that reside in it. Source accounts share their observability data with the monitoring account. The shared observability data can include metrics in Amazon CloudWatch, logs in Amazon CloudWatch Logs, traces in X-Ray, Application Signals services and service level objectives (SLOs), applications in Amazon CloudWatch Application Insights, and internet monitors in CloudWatch Internet Monitor.</p> <p>When you set up a link, you can choose to share the metrics from all namespaces with the monitoring account, or filter to a subset of namespaces. And for CloudWatch Logs, you can choose to share all log groups with the monitoring account, or filter to a subset of log groups. </p>
module Aws::OAM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-oam/types'
require_relative 'aws-sdk-oam/paginators'
require_relative 'aws-sdk-oam/schema'
require_relative 'aws-sdk-oam/auth_parameters'
require_relative 'aws-sdk-oam/auth_resolver'
require_relative 'aws-sdk-oam/client'
require_relative 'aws-sdk-oam/errors'
require_relative 'aws-sdk-oam/endpoint_parameters'
require_relative 'aws-sdk-oam/endpoint_provider'
require_relative 'aws-sdk-oam/waiters'
require_relative 'aws-sdk-oam/customizations'
