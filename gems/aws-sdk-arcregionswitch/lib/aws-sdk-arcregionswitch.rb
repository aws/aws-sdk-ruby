# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ARCRegionswitch', Module.new) unless Aws.const_defined?('ARCRegionswitch')

# @title ARC - Region switch
# <p>Amazon Application Recovery Controller (ARC) Region switch helps you to quickly and reliably shift traffic away from an impaired Amazon Web Services Region to a healthy Region. With Region switch, you can create plans that define the steps to shift traffic for your application from one Amazon Web Services Region to another. You can test your plans in practice mode before using them in a real recovery scenario.</p> <p>Region switch provides a structured approach to multi-Region failover, helping you to meet your recovery time objectives (RTOs) and maintain business continuity during regional disruptions.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/region-switch.html">Region switch in ARC</a> in the <i>Amazon Application Recovery Controller User Guide</i>.</p>
module Aws::ARCRegionswitch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-arcregionswitch/types'
require_relative 'aws-sdk-arcregionswitch/paginators'
require_relative 'aws-sdk-arcregionswitch/schema'
require_relative 'aws-sdk-arcregionswitch/auth_parameters'
require_relative 'aws-sdk-arcregionswitch/auth_resolver'
require_relative 'aws-sdk-arcregionswitch/client'
require_relative 'aws-sdk-arcregionswitch/customizations'
require_relative 'aws-sdk-arcregionswitch/errors'
require_relative 'aws-sdk-arcregionswitch/endpoint_parameters'
require_relative 'aws-sdk-arcregionswitch/endpoint_provider'
require_relative 'aws-sdk-arcregionswitch/waiters'
