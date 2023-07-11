# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ivsrealtime/types'
require_relative 'aws-sdk-ivsrealtime/client_api'
require_relative 'aws-sdk-ivsrealtime/plugins/endpoints.rb'
require_relative 'aws-sdk-ivsrealtime/client'
require_relative 'aws-sdk-ivsrealtime/errors'
require_relative 'aws-sdk-ivsrealtime/resource'
require_relative 'aws-sdk-ivsrealtime/endpoint_parameters'
require_relative 'aws-sdk-ivsrealtime/endpoint_provider'
require_relative 'aws-sdk-ivsrealtime/endpoints'
require_relative 'aws-sdk-ivsrealtime/customizations'

# This module provides support for Amazon Interactive Video Service RealTime. This module is available in the
# `aws-sdk-ivsrealtime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivs_real_time = Aws::IVSRealTime::Client.new
#     resp = ivs_real_time.create_participant_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service RealTime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IVSRealTime::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service RealTime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IVSRealTime

  GEM_VERSION = '1.7.0'

end
