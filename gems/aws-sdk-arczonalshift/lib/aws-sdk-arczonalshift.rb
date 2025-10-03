# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ARCZonalShift', Module.new) unless Aws.const_defined?('ARCZonalShift')

# @title AWS ARC - Zonal Shift
# <p>Welcome to the API Reference Guide for zonal shift and zonal autoshift in Amazon Application Recovery Controller (ARC).</p> <p>You can start a zonal shift to move traffic for a load balancer resource away from an Availability Zone to help your application recover quickly from an impairment in an Availability Zone. For example, you can recover your application from a developer's bad code deployment or from an Amazon Web Services infrastructure failure in a single Availability Zone.</p> <p>You can also configure zonal autoshift for supported load balancer resources. Zonal autoshift is a capability in ARC where you authorize Amazon Web Services to shift away application resource traffic from an Availability Zone during events, on your behalf, to help reduce your time to recovery. Amazon Web Services starts an autoshift when internal telemetry indicates that there is an Availability Zone impairment that could potentially impact customers.</p> <p>For more information about using zonal shift and zonal autoshift, see the <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html">Amazon Application Recovery Controller Developer Guide</a>.</p>
module Aws::ARCZonalShift
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-arczonalshift/types'
require_relative 'aws-sdk-arczonalshift/paginators'
require_relative 'aws-sdk-arczonalshift/schema'
require_relative 'aws-sdk-arczonalshift/auth_parameters'
require_relative 'aws-sdk-arczonalshift/auth_resolver'
require_relative 'aws-sdk-arczonalshift/client'
require_relative 'aws-sdk-arczonalshift/customizations'
require_relative 'aws-sdk-arczonalshift/errors'
require_relative 'aws-sdk-arczonalshift/endpoint_parameters'
require_relative 'aws-sdk-arczonalshift/endpoint_provider'
require_relative 'aws-sdk-arczonalshift/waiters'
