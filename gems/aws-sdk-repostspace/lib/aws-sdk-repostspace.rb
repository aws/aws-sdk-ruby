# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Repostspace', Module.new) unless Aws.const_defined?('Repostspace')

# @title AWS re:Post Private
# <p>AWS re:Post Private is a private version of AWS re:Post for enterprises with Enterprise Support or Enterprise On-Ramp Support plans. It provides access to knowledge and experts to accelerate cloud adoption and increase developer productivity. With your organization-specific private re:Post, you can build an organization-specific developer community that drives efficiencies at scale and provides access to valuable knowledge resources. Additionally, re:Post Private centralizes trusted AWS technical content and offers private discussion forums to improve how your teams collaborate internally and with AWS to remove technical obstacles, accelerate innovation, and scale more efficiently in the cloud.</p>
module Aws::Repostspace
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-repostspace/types'
require_relative 'aws-sdk-repostspace/paginators'
require_relative 'aws-sdk-repostspace/schema'
require_relative 'aws-sdk-repostspace/auth_parameters'
require_relative 'aws-sdk-repostspace/auth_resolver'
require_relative 'aws-sdk-repostspace/client'
require_relative 'aws-sdk-repostspace/customizations'
require_relative 'aws-sdk-repostspace/errors'
require_relative 'aws-sdk-repostspace/endpoint_parameters'
require_relative 'aws-sdk-repostspace/endpoint_provider'
require_relative 'aws-sdk-repostspace/waiters'
