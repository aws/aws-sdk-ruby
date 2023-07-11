# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-securitylake/types'
require_relative 'aws-sdk-securitylake/client_api'
require_relative 'aws-sdk-securitylake/plugins/endpoints.rb'
require_relative 'aws-sdk-securitylake/client'
require_relative 'aws-sdk-securitylake/errors'
require_relative 'aws-sdk-securitylake/resource'
require_relative 'aws-sdk-securitylake/endpoint_parameters'
require_relative 'aws-sdk-securitylake/endpoint_provider'
require_relative 'aws-sdk-securitylake/endpoints'
require_relative 'aws-sdk-securitylake/customizations'

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

  GEM_VERSION = '1.9.0'

end
