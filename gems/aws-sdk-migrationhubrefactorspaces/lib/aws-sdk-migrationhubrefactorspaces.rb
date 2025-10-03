# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MigrationHubRefactorSpaces', Module.new) unless Aws.const_defined?('MigrationHubRefactorSpaces')

# @title AWS Migration Hub Refactor Spaces
# <fullname>Amazon Web Services Migration Hub Refactor Spaces</fullname>
#          <p>This API reference provides descriptions, syntax, and other details about each of the
#       actions and data types for Amazon Web Services Migration Hub Refactor Spaces (Refactor Spaces). The topic for each action shows the API
#       request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to
#       access an API that is tailored to the programming language or platform that you're using. For
#       more information, see <a href="https://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
#          <p>To share Refactor Spaces environments with other Amazon Web Services accounts or with Organizations
#       and their OUs, use Resource Access Manager's <code>CreateResourceShare</code> API. See <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> in the <i>Amazon Web Services RAM API Reference</i>.</p>
module Aws::MigrationHubRefactorSpaces
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-migrationhubrefactorspaces/types'
require_relative 'aws-sdk-migrationhubrefactorspaces/paginators'
require_relative 'aws-sdk-migrationhubrefactorspaces/schema'
require_relative 'aws-sdk-migrationhubrefactorspaces/auth_parameters'
require_relative 'aws-sdk-migrationhubrefactorspaces/auth_resolver'
require_relative 'aws-sdk-migrationhubrefactorspaces/client'
require_relative 'aws-sdk-migrationhubrefactorspaces/customizations'
require_relative 'aws-sdk-migrationhubrefactorspaces/errors'
require_relative 'aws-sdk-migrationhubrefactorspaces/endpoint_parameters'
require_relative 'aws-sdk-migrationhubrefactorspaces/endpoint_provider'
require_relative 'aws-sdk-migrationhubrefactorspaces/waiters'
