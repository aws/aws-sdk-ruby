# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppFabric', Module.new) unless Aws.const_defined?('AppFabric')

# @title AppFabric
# <p>Amazon Web Services AppFabric quickly connects software as a service (SaaS) applications across your
#          organization. This allows IT and security teams to easily manage and secure applications
#          using a standard schema, and employees can complete everyday tasks faster using generative
#          artificial intelligence (AI). You can use these APIs to complete AppFabric tasks, such as
#          setting up audit log ingestions or viewing user access. For more information about AppFabric,
#          including the required permissions to use the service, see the <a href="https://docs.aws.amazon.com/appfabric/latest/adminguide/">Amazon Web Services AppFabric Administration Guide</a>. For more
#          information about using the Command Line Interface (CLI) to manage your
#          AppFabric resources, see the <a href="https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html">AppFabric section of the CLI
#             Reference</a>.</p>
module Aws::AppFabric
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-appfabric/types'
require_relative 'aws-sdk-appfabric/paginators'
require_relative 'aws-sdk-appfabric/schema'
require_relative 'aws-sdk-appfabric/auth_parameters'
require_relative 'aws-sdk-appfabric/auth_resolver'
require_relative 'aws-sdk-appfabric/client'
require_relative 'aws-sdk-appfabric/errors'
require_relative 'aws-sdk-appfabric/endpoint_parameters'
require_relative 'aws-sdk-appfabric/endpoint_provider'
require_relative 'aws-sdk-appfabric/waiters'
require_relative 'aws-sdk-appfabric/customizations'
