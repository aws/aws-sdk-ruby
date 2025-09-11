# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Savingsplans', Module.new) unless Aws.const_defined?('Savingsplans')

# @title AWS Savings Plans
# <p>Savings Plans are a pricing model that offer significant savings on Amazon Web Services usage (for example, on Amazon EC2 instances). You commit to a consistent
#          amount of usage per hour, in the specified currency, for a term of one or three years, and
#          receive a lower price for that usage. For more information, see the <a href="https://docs.aws.amazon.com/savingsplans/latest/userguide/">Amazon Web Services
#             Savings Plans User Guide</a>.</p>
module Aws::Savingsplans
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-savingsplans/types'
require_relative 'aws-sdk-savingsplans/paginators'
require_relative 'aws-sdk-savingsplans/schema'
require_relative 'aws-sdk-savingsplans/auth_parameters'
require_relative 'aws-sdk-savingsplans/auth_resolver'
require_relative 'aws-sdk-savingsplans/client'
require_relative 'aws-sdk-savingsplans/customizations'
require_relative 'aws-sdk-savingsplans/errors'
require_relative 'aws-sdk-savingsplans/endpoint_parameters'
require_relative 'aws-sdk-savingsplans/endpoint_provider'
require_relative 'aws-sdk-savingsplans/waiters'
