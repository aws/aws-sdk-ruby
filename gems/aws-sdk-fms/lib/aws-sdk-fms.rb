# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('FMS', Module.new) unless Aws.const_defined?('FMS')

# @title Firewall Management Service
# <p>This is the <i>Firewall Manager API Reference</i>. This guide is for
#       developers who need detailed information about the Firewall Manager API actions, data
#       types, and errors. For detailed information about Firewall Manager features, see the
#         <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html">Firewall Manager Developer Guide</a>.</p>
#          <p>Some API actions require explicit resource permissions. For information, see the developer guide topic
#         <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service">Service roles for Firewall Manager</a>.
# </p>
module Aws::FMS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-fms/types'
require_relative 'aws-sdk-fms/paginators'
require_relative 'aws-sdk-fms/schema'
require_relative 'aws-sdk-fms/auth_parameters'
require_relative 'aws-sdk-fms/auth_resolver'
require_relative 'aws-sdk-fms/client'
require_relative 'aws-sdk-fms/customizations'
require_relative 'aws-sdk-fms/errors'
require_relative 'aws-sdk-fms/endpoint_parameters'
require_relative 'aws-sdk-fms/endpoint_provider'
require_relative 'aws-sdk-fms/waiters'
