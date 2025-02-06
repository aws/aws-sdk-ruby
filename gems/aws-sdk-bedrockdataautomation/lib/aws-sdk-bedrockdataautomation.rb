# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockdataautomation)

# This module provides support for Data Automation for Amazon Bedrock. This module is available in the
# `aws-sdk-bedrockdataautomation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_data_automation = Aws::BedrockDataAutomation::Client.new
#     resp = bedrock_data_automation.create_blueprint(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Data Automation for Amazon Bedrock are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockDataAutomation::Errors::ServiceError
#       # rescues all Data Automation for Amazon Bedrock API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockDataAutomation
  autoload :Types, 'aws-sdk-bedrockdataautomation/types'
  autoload :ClientApi, 'aws-sdk-bedrockdataautomation/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockdataautomation/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockdataautomation/client'
  autoload :Errors, 'aws-sdk-bedrockdataautomation/errors'
  autoload :Resource, 'aws-sdk-bedrockdataautomation/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockdataautomation/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockdataautomation/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockdataautomation/endpoints'

  GEM_VERSION = '1.3.0'

end

require_relative 'aws-sdk-bedrockdataautomation/customizations'
