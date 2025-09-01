# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('FreeTier', Module.new) unless Aws.const_defined?('FreeTier')

# @title AWS Free Tier
# <p>You can use the Amazon Web Services Free Tier API to query programmatically your Free Tier usage data.</p> <p>Free Tier tracks your monthly usage data for all free tier offers that are associated with your Amazon Web Services account. You can use the Free Tier API to filter and show only the data that you want.</p> <p>Service endpoint</p> <p>The Free Tier API provides the following endpoint:</p> <ul/> <p>For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html">Using the Amazon Web Services Free Tier</a> in the <i>Billing User Guide</i>.</p>
module Aws::FreeTier
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-freetier/types'
require_relative 'aws-sdk-freetier/paginators'
require_relative 'aws-sdk-freetier/schema'
require_relative 'aws-sdk-freetier/auth_parameters'
require_relative 'aws-sdk-freetier/auth_resolver'
require_relative 'aws-sdk-freetier/client'
require_relative 'aws-sdk-freetier/customizations'
require_relative 'aws-sdk-freetier/errors'
require_relative 'aws-sdk-freetier/endpoint_parameters'
require_relative 'aws-sdk-freetier/endpoint_provider'
require_relative 'aws-sdk-freetier/waiters'
