# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-connectcases/types'
require_relative 'aws-sdk-connectcases/client_api'
require_relative 'aws-sdk-connectcases/plugins/endpoints.rb'
require_relative 'aws-sdk-connectcases/client'
require_relative 'aws-sdk-connectcases/errors'
require_relative 'aws-sdk-connectcases/resource'
require_relative 'aws-sdk-connectcases/endpoint_parameters'
require_relative 'aws-sdk-connectcases/endpoint_provider'
require_relative 'aws-sdk-connectcases/endpoints'
require_relative 'aws-sdk-connectcases/customizations'

# This module provides support for Amazon Connect Cases. This module is available in the
# `aws-sdk-connectcases` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_cases = Aws::ConnectCases::Client.new
#     resp = connect_cases.batch_get_field(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Cases are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectCases::Errors::ServiceError
#       # rescues all Amazon Connect Cases API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectCases

  GEM_VERSION = '1.10.0'

end
