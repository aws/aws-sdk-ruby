# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-opsworks/types'
require_relative 'aws-sdk-opsworks/client_api'
require_relative 'aws-sdk-opsworks/client'
require_relative 'aws-sdk-opsworks/errors'
require_relative 'aws-sdk-opsworks/waiters'
require_relative 'aws-sdk-opsworks/resource'
require_relative 'aws-sdk-opsworks/layer'
require_relative 'aws-sdk-opsworks/stack'
require_relative 'aws-sdk-opsworks/stack_summary'
require_relative 'aws-sdk-opsworks/customizations'

# This module provides support for AWS OpsWorks. This module is available in the
# `aws-sdk-opsworks` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ops_works = Aws::OpsWorks::Client.new
#     resp = ops_works.assign_instance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS OpsWorks are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpsWorks::Errors::ServiceError
#       # rescues all AWS OpsWorks API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpsWorks

  GEM_VERSION = '1.30.0'

end
