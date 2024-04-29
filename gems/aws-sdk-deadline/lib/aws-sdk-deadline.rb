# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-deadline/types'
require_relative 'aws-sdk-deadline/client_api'
require_relative 'aws-sdk-deadline/plugins/endpoints.rb'
require_relative 'aws-sdk-deadline/client'
require_relative 'aws-sdk-deadline/errors'
require_relative 'aws-sdk-deadline/waiters'
require_relative 'aws-sdk-deadline/resource'
require_relative 'aws-sdk-deadline/endpoint_parameters'
require_relative 'aws-sdk-deadline/endpoint_provider'
require_relative 'aws-sdk-deadline/endpoints'
require_relative 'aws-sdk-deadline/customizations'

# This module provides support for AWSDeadlineCloud. This module is available in the
# `aws-sdk-deadline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     deadline = Aws::Deadline::Client.new
#     resp = deadline.associate_member_to_farm(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSDeadlineCloud are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Deadline::Errors::ServiceError
#       # rescues all AWSDeadlineCloud API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Deadline

  GEM_VERSION = '1.1.0'

end
