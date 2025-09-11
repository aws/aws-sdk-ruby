# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Evs', Module.new) unless Aws.const_defined?('Evs')

# @title Amazon Elastic VMware Service
# <p>Amazon Elastic VMware Service (Amazon EVS) is a service that you can use to deploy a VMware Cloud Foundation (VCF) software environment directly on EC2 bare metal instances within an Amazon Virtual Private Cloud (VPC).</p> <p>Workloads running on Amazon EVS are fully compatible with workloads running on any standard VMware vSphere environment. This means that you can migrate any VMware-based workload to Amazon EVS without workload modification.</p>
module Aws::Evs
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-evs/types'
require_relative 'aws-sdk-evs/paginators'
require_relative 'aws-sdk-evs/schema'
require_relative 'aws-sdk-evs/auth_parameters'
require_relative 'aws-sdk-evs/auth_resolver'
require_relative 'aws-sdk-evs/client'
require_relative 'aws-sdk-evs/customizations'
require_relative 'aws-sdk-evs/errors'
require_relative 'aws-sdk-evs/endpoint_parameters'
require_relative 'aws-sdk-evs/endpoint_provider'
require_relative 'aws-sdk-evs/waiters'
