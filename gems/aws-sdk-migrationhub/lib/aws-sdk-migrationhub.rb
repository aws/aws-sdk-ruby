# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MigrationHub', Module.new) unless Aws.const_defined?('MigrationHub')

# @title AWS Migration Hub
# <p>The AWS Migration Hub API methods help to obtain server and application migration status
#          and integrate your resource-specific migration tool by providing a programmatic interface
#          to Migration Hub.</p>
#          <p>Remember that you must set your AWS Migration Hub home region before you call any of
#          these APIs, or a <code>HomeRegionNotSetException</code> error will be returned. Also, you
#          must make the API calls while in your home region.</p>
module Aws::MigrationHub
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-migrationhub/types'
require_relative 'aws-sdk-migrationhub/paginators'
require_relative 'aws-sdk-migrationhub/schema'
require_relative 'aws-sdk-migrationhub/auth_parameters'
require_relative 'aws-sdk-migrationhub/auth_resolver'
require_relative 'aws-sdk-migrationhub/client'
require_relative 'aws-sdk-migrationhub/customizations'
require_relative 'aws-sdk-migrationhub/errors'
require_relative 'aws-sdk-migrationhub/endpoint_parameters'
require_relative 'aws-sdk-migrationhub/endpoint_provider'
require_relative 'aws-sdk-migrationhub/waiters'
