# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-eventbridge/types'
require_relative 'aws-sdk-eventbridge/client_api'
require_relative 'aws-sdk-eventbridge/client'
require_relative 'aws-sdk-eventbridge/errors'
require_relative 'aws-sdk-eventbridge/resource'
require_relative 'aws-sdk-eventbridge/customizations'

# This module provides support for Amazon EventBridge. This module is available in the
# `aws-sdk-eventbridge` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     event_bridge = Aws::EventBridge::Client.new
#     resp = event_bridge.activate_event_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridge are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EventBridge::Errors::ServiceError
#       # rescues all Amazon EventBridge API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EventBridge

  GEM_VERSION = '1.34.0'

end
