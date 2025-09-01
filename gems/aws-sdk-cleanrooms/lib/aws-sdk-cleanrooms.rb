# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CleanRooms', Module.new) unless Aws.const_defined?('CleanRooms')

# @title AWS Clean Rooms Service
# <p>Welcome to the <i>Clean Rooms API Reference</i>.</p> <p>Clean Rooms is an Amazon Web Services service that helps multiple parties to join their data together in a secure collaboration workspace. In the collaboration, members who can run queries and jobs and receive results can get insights into the collective datasets without either party getting access to the other party's raw data.</p> <p>To learn more about Clean Rooms concepts, procedures, and best practices, see the <a href="https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html">Clean Rooms User Guide</a>.</p> <p>To learn more about SQL commands, functions, and conditions supported in Clean Rooms, see the <a href="https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html">Clean Rooms SQL Reference</a>.</p>
module Aws::CleanRooms
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cleanrooms/types'
require_relative 'aws-sdk-cleanrooms/paginators'
require_relative 'aws-sdk-cleanrooms/schema'
require_relative 'aws-sdk-cleanrooms/auth_parameters'
require_relative 'aws-sdk-cleanrooms/auth_resolver'
require_relative 'aws-sdk-cleanrooms/client'
require_relative 'aws-sdk-cleanrooms/customizations'
require_relative 'aws-sdk-cleanrooms/errors'
require_relative 'aws-sdk-cleanrooms/endpoint_parameters'
require_relative 'aws-sdk-cleanrooms/endpoint_provider'
require_relative 'aws-sdk-cleanrooms/waiters'
