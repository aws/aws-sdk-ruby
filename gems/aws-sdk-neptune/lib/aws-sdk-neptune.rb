# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-neptune/types'
require_relative 'aws-sdk-neptune/client_api'
require_relative 'aws-sdk-neptune/client'
require_relative 'aws-sdk-neptune/errors'
require_relative 'aws-sdk-neptune/waiters'
require_relative 'aws-sdk-neptune/resource'
require_relative 'aws-sdk-neptune/customizations'

# This module provides support for Amazon Neptune. This module is available in the
# `aws-sdk-neptune` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     neptune = Aws::Neptune::Client.new
#     resp = neptune.add_role_to_db_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Neptune are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Neptune::Errors::ServiceError
#       # rescues all Amazon Neptune API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Neptune

  GEM_VERSION = '1.43.0'

end
