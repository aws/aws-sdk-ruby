# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkMailMessageFlow', Module.new) unless Aws.const_defined?('WorkMailMessageFlow')

# @title Amazon WorkMail Message Flow
# <p>The WorkMail Message Flow API provides access to email messages as they are
#       being
#       sent and received by
#       a
#       WorkMail organization.</p>
module Aws::WorkMailMessageFlow
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workmailmessageflow/types'
require_relative 'aws-sdk-workmailmessageflow/paginators'
require_relative 'aws-sdk-workmailmessageflow/schema'
require_relative 'aws-sdk-workmailmessageflow/auth_parameters'
require_relative 'aws-sdk-workmailmessageflow/auth_resolver'
require_relative 'aws-sdk-workmailmessageflow/client'
require_relative 'aws-sdk-workmailmessageflow/customizations'
require_relative 'aws-sdk-workmailmessageflow/errors'
require_relative 'aws-sdk-workmailmessageflow/endpoint_parameters'
require_relative 'aws-sdk-workmailmessageflow/endpoint_provider'
require_relative 'aws-sdk-workmailmessageflow/waiters'
