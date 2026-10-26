# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Resiliencehubv2', Module.new) unless Aws.const_defined?('Resiliencehubv2')

# @title AWS Resilience Hub V2
# <p>The next generation of AWS Resilience Hub is the single location in AWS where you assess and improve the resilience of your critical applications. It helps Site Reliability Engineers (SREs) and development teams proactively reason about resilience at scale — identifying failure modes, discovering hidden dependencies, and report on progress across the enterprise. </p>
module Aws::Resiliencehubv2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-resiliencehubv2/types'
require_relative 'aws-sdk-resiliencehubv2/paginators'
require_relative 'aws-sdk-resiliencehubv2/schema'
require_relative 'aws-sdk-resiliencehubv2/auth_parameters'
require_relative 'aws-sdk-resiliencehubv2/auth_resolver'
require_relative 'aws-sdk-resiliencehubv2/client'
require_relative 'aws-sdk-resiliencehubv2/errors'
require_relative 'aws-sdk-resiliencehubv2/endpoint_parameters'
require_relative 'aws-sdk-resiliencehubv2/endpoint_provider'
require_relative 'aws-sdk-resiliencehubv2/waiters'
require_relative 'aws-sdk-resiliencehubv2/customizations'
