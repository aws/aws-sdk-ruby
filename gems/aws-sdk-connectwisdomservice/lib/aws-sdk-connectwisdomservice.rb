# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-connectwisdomservice/types'
require_relative 'aws-sdk-connectwisdomservice/client_api'
require_relative 'aws-sdk-connectwisdomservice/plugins/endpoints.rb'
require_relative 'aws-sdk-connectwisdomservice/client'
require_relative 'aws-sdk-connectwisdomservice/errors'
require_relative 'aws-sdk-connectwisdomservice/resource'
require_relative 'aws-sdk-connectwisdomservice/endpoint_parameters'
require_relative 'aws-sdk-connectwisdomservice/endpoint_provider'
require_relative 'aws-sdk-connectwisdomservice/endpoints'
require_relative 'aws-sdk-connectwisdomservice/customizations'

# This module provides support for Amazon Connect Wisdom Service. This module is available in the
# `aws-sdk-connectwisdomservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_wisdom_service = Aws::ConnectWisdomService::Client.new
#     resp = connect_wisdom_service.create_assistant(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Wisdom Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectWisdomService::Errors::ServiceError
#       # rescues all Amazon Connect Wisdom Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectWisdomService

  GEM_VERSION = '1.18.0'

end
