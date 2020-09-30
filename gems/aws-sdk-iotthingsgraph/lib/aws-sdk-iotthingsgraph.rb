# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotthingsgraph/types'
require_relative 'aws-sdk-iotthingsgraph/client_api'
require_relative 'aws-sdk-iotthingsgraph/client'
require_relative 'aws-sdk-iotthingsgraph/errors'
require_relative 'aws-sdk-iotthingsgraph/resource'
require_relative 'aws-sdk-iotthingsgraph/customizations'

# This module provides support for AWS IoT Things Graph. This module is available in the
# `aws-sdk-iotthingsgraph` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_things_graph = Aws::IoTThingsGraph::Client.new
#     resp = io_t_things_graph.associate_entity_to_thing(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Things Graph are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTThingsGraph::Errors::ServiceError
#       # rescues all AWS IoT Things Graph API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTThingsGraph

  GEM_VERSION = '1.12.0'

end
