# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotevents/types'
require_relative 'aws-sdk-iotevents/client_api'
require_relative 'aws-sdk-iotevents/client'
require_relative 'aws-sdk-iotevents/errors'
require_relative 'aws-sdk-iotevents/resource'
require_relative 'aws-sdk-iotevents/customizations'

# This module provides support for AWS IoT Events. This module is available in the
# `aws-sdk-iotevents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Events all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTEvents::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::IoTEvents

  GEM_VERSION = '1.2.0'

end
