# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PricingPlanManager', Module.new) unless Aws.const_defined?('PricingPlanManager')

# @title PricingPlanManager
# <p>Manages flat-rate pricing subscriptions for supported services. Use this API to create, approve, update, and cancel subscriptions; associate and disassociate resources; and retrieve subscription details. With a flat-rate pricing subscription, you pay a fixed recurring fee for eligible resources instead of usage-based pricing.</p>
module Aws::PricingPlanManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pricingplanmanager/types'
require_relative 'aws-sdk-pricingplanmanager/paginators'
require_relative 'aws-sdk-pricingplanmanager/schema'
require_relative 'aws-sdk-pricingplanmanager/auth_parameters'
require_relative 'aws-sdk-pricingplanmanager/auth_resolver'
require_relative 'aws-sdk-pricingplanmanager/client'
require_relative 'aws-sdk-pricingplanmanager/errors'
require_relative 'aws-sdk-pricingplanmanager/endpoint_parameters'
require_relative 'aws-sdk-pricingplanmanager/endpoint_provider'
require_relative 'aws-sdk-pricingplanmanager/waiters'
require_relative 'aws-sdk-pricingplanmanager/customizations'
