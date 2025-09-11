# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Identitystore', Module.new) unless Aws.const_defined?('Identitystore')

# @title AWS SSO Identity Store
# <p>The Identity Store service used by IAM Identity Center provides a single place to retrieve all of
#          your identities (users and groups). For more information, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">IAM Identity Center User
#             Guide</a>.</p>
#          <p>This reference guide describes the identity store operations that you can call
#          programmatically and includes detailed information about data types and errors.</p>
#          <note>
#             <p>IAM Identity Center uses the <code>sso</code> and <code>identitystore</code> API namespaces.</p>
#          </note>
module Aws::Identitystore
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-identitystore/types'
require_relative 'aws-sdk-identitystore/paginators'
require_relative 'aws-sdk-identitystore/schema'
require_relative 'aws-sdk-identitystore/auth_parameters'
require_relative 'aws-sdk-identitystore/auth_resolver'
require_relative 'aws-sdk-identitystore/client'
require_relative 'aws-sdk-identitystore/customizations'
require_relative 'aws-sdk-identitystore/errors'
require_relative 'aws-sdk-identitystore/endpoint_parameters'
require_relative 'aws-sdk-identitystore/endpoint_provider'
require_relative 'aws-sdk-identitystore/waiters'
