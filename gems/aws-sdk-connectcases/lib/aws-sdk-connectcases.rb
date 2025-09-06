# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectCases', Module.new) unless Aws.const_defined?('ConnectCases')

# @title Amazon Connect Cases
# <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Cases.html">Cases actions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Cases.html">Cases data types</a> </p> </li> </ul> <p>With Amazon Connect Cases, your agents can track and manage customer issues that require multiple interactions, follow-up tasks, and teams in your contact center. A case represents a customer issue. It records the issue, the steps and interactions taken to resolve the issue, and the outcome. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Amazon Connect Cases</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
module Aws::ConnectCases
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connectcases/types'
require_relative 'aws-sdk-connectcases/paginators'
require_relative 'aws-sdk-connectcases/schema'
require_relative 'aws-sdk-connectcases/auth_parameters'
require_relative 'aws-sdk-connectcases/auth_resolver'
require_relative 'aws-sdk-connectcases/client'
require_relative 'aws-sdk-connectcases/customizations'
require_relative 'aws-sdk-connectcases/errors'
require_relative 'aws-sdk-connectcases/endpoint_parameters'
require_relative 'aws-sdk-connectcases/endpoint_provider'
require_relative 'aws-sdk-connectcases/waiters'
