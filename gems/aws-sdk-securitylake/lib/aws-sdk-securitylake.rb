# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:securitylake)

# This module provides support for Amazon Security Lake. This module is available in the
# `aws-sdk-securitylake` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     security_lake = Aws::SecurityLake::Client.new
#     resp = security_lake.create_aws_log_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Security Lake are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SecurityLake::Errors::ServiceError
#       # rescues all Amazon Security Lake API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SecurityLake
  autoload :Types, 'aws-sdk-securitylake/types'
  autoload :ClientApi, 'aws-sdk-securitylake/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-securitylake/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-securitylake/client'
  autoload :Errors, 'aws-sdk-securitylake/errors'
  autoload :Resource, 'aws-sdk-securitylake/resource'
  autoload :EndpointParameters, 'aws-sdk-securitylake/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-securitylake/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-securitylake/endpoints'

  GEM_VERSION = '1.41.0'

end

require_relative 'aws-sdk-securitylake/customizations'
