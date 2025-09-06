# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MigrationHubStrategy', Module.new) unless Aws.const_defined?('MigrationHubStrategy')

# @title Migration Hub Strategy Recommendations
# <fullname>Migration Hub Strategy Recommendations</fullname>
#          <p>This API reference provides descriptions, syntax, and other details about each of the
#       actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API
#       request parameters and the response. Alternatively, you can use one of the AWS SDKs to
#       access an API that is tailored to the programming language or platform that you're using. For
#       more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p>
module Aws::MigrationHubStrategy
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-migrationhubstrategy/types'
require_relative 'aws-sdk-migrationhubstrategy/paginators'
require_relative 'aws-sdk-migrationhubstrategy/schema'
require_relative 'aws-sdk-migrationhubstrategy/auth_parameters'
require_relative 'aws-sdk-migrationhubstrategy/auth_resolver'
require_relative 'aws-sdk-migrationhubstrategy/client'
require_relative 'aws-sdk-migrationhubstrategy/customizations'
require_relative 'aws-sdk-migrationhubstrategy/errors'
require_relative 'aws-sdk-migrationhubstrategy/endpoint_parameters'
require_relative 'aws-sdk-migrationhubstrategy/endpoint_provider'
require_relative 'aws-sdk-migrationhubstrategy/waiters'
