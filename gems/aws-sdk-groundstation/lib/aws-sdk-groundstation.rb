# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-groundstation/types'
require_relative 'aws-sdk-groundstation/client_api'
require_relative 'aws-sdk-groundstation/client'
require_relative 'aws-sdk-groundstation/errors'
require_relative 'aws-sdk-groundstation/resource'
require_relative 'aws-sdk-groundstation/customizations'

# This module provides support for AWS Ground Station. This module is available in the
# `aws-sdk-groundstation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ground_station = Aws::GroundStation::Client.new
#     resp = ground_station.cancel_contact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Ground Station are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::GroundStation::Errors::ServiceError
#       # rescues all AWS Ground Station API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::GroundStation

  GEM_VERSION = '1.15.0'

end
