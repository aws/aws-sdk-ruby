# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Outposts', Module.new) unless Aws.const_defined?('Outposts')

# @title AWS Outposts
# <p>Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools to
#       customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts enables
#       customers to build and run applications on premises using the same programming interfaces as
#       in Amazon Web Services Regions, while using local compute and storage resources for lower latency and local
#       data processing needs.</p>
#          <p>You can use certain Amazon EC2 API actions for Amazon Web Services Outposts. For more information on these API actions, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/operation-list-outposts.html">Amazon Web Services Outposts actions</a> in the <i>Amazon EC2 API Reference</i>.</p>
module Aws::Outposts
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-outposts/types'
require_relative 'aws-sdk-outposts/paginators'
require_relative 'aws-sdk-outposts/schema'
require_relative 'aws-sdk-outposts/auth_parameters'
require_relative 'aws-sdk-outposts/auth_resolver'
require_relative 'aws-sdk-outposts/client'
require_relative 'aws-sdk-outposts/errors'
require_relative 'aws-sdk-outposts/endpoint_parameters'
require_relative 'aws-sdk-outposts/endpoint_provider'
require_relative 'aws-sdk-outposts/waiters'
require_relative 'aws-sdk-outposts/customizations'
