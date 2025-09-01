# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudTrailData', Module.new) unless Aws.const_defined?('CloudTrailData')

# @title AWS CloudTrail Data Service
# <p>The CloudTrail Data Service lets you ingest events into CloudTrail from any source in your
# hybrid environments, such as in-house or SaaS applications hosted on-premises or in the cloud,
# virtual machines, or containers. You can store, access, analyze, troubleshoot and take action on
# this data without maintaining multiple log aggregators and reporting tools. After you run 
# <code>PutAuditEvents</code> to ingest your application activity into CloudTrail, you can use CloudTrail Lake to search, query, and analyze the data that is logged
# from your applications.</p>
module Aws::CloudTrailData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudtraildata/types'
require_relative 'aws-sdk-cloudtraildata/paginators'
require_relative 'aws-sdk-cloudtraildata/schema'
require_relative 'aws-sdk-cloudtraildata/auth_parameters'
require_relative 'aws-sdk-cloudtraildata/auth_resolver'
require_relative 'aws-sdk-cloudtraildata/client'
require_relative 'aws-sdk-cloudtraildata/customizations'
require_relative 'aws-sdk-cloudtraildata/errors'
require_relative 'aws-sdk-cloudtraildata/endpoint_parameters'
require_relative 'aws-sdk-cloudtraildata/endpoint_provider'
require_relative 'aws-sdk-cloudtraildata/waiters'
