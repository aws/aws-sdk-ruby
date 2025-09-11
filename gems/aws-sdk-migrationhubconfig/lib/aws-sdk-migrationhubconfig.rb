# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MigrationHubConfig', Module.new) unless Aws.const_defined?('MigrationHubConfig')

# @title AWS Migration Hub Config
# <p>The AWS Migration Hub home region APIs are available specifically for working with your
#       Migration Hub home region. You can use these APIs to determine a home region, as well as to
#       create and work with controls that describe the home region.</p>
#          <ul>
#             <li>
#                <p>You must make API calls for write actions (create, notify, associate, disassociate,
#           import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
#           error is returned.</p>
#             </li>
#             <li>
#                <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of
#           your home region.</p>
#             </li>
#             <li>
#                <p>If you call a write API outside the home region, an <code>InvalidInputException</code>
#           is returned.</p>
#             </li>
#             <li>
#                <p>You can call <code>GetHomeRegion</code> action to obtain the account's Migration Hub
#           home region.</p>
#             </li>
#          </ul>
#          <p>For specific API usage, see the sections that follow in this AWS Migration Hub Home Region
#       API reference. </p>
module Aws::MigrationHubConfig
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-migrationhubconfig/types'
require_relative 'aws-sdk-migrationhubconfig/paginators'
require_relative 'aws-sdk-migrationhubconfig/schema'
require_relative 'aws-sdk-migrationhubconfig/auth_parameters'
require_relative 'aws-sdk-migrationhubconfig/auth_resolver'
require_relative 'aws-sdk-migrationhubconfig/client'
require_relative 'aws-sdk-migrationhubconfig/customizations'
require_relative 'aws-sdk-migrationhubconfig/errors'
require_relative 'aws-sdk-migrationhubconfig/endpoint_parameters'
require_relative 'aws-sdk-migrationhubconfig/endpoint_provider'
require_relative 'aws-sdk-migrationhubconfig/waiters'
