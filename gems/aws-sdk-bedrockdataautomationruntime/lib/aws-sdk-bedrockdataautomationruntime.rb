# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockdataautomationruntime)

# This module provides support for Runtime for Amazon Bedrock Data Automation. This module is available in the
# `aws-sdk-bedrockdataautomationruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_data_automation_runtime = Aws::BedrockDataAutomationRuntime::Client.new
#     resp = bedrock_data_automation_runtime.get_data_automation_status(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Runtime for Amazon Bedrock Data Automation are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockDataAutomationRuntime::Errors::ServiceError
#       # rescues all Runtime for Amazon Bedrock Data Automation API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockDataAutomationRuntime
  autoload :Types, 'aws-sdk-bedrockdataautomationruntime/types'
  autoload :ClientApi, 'aws-sdk-bedrockdataautomationruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockdataautomationruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockdataautomationruntime/client'
  autoload :Errors, 'aws-sdk-bedrockdataautomationruntime/errors'
  autoload :Resource, 'aws-sdk-bedrockdataautomationruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockdataautomationruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockdataautomationruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockdataautomationruntime/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-bedrockdataautomationruntime/customizations'
