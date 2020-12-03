# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-health/types'
require_relative 'aws-sdk-health/client_api'
require_relative 'aws-sdk-health/client'
require_relative 'aws-sdk-health/errors'
require_relative 'aws-sdk-health/resource'
require_relative 'aws-sdk-health/customizations'

# This module provides support for AWS Health APIs and Notifications. This module is available in the
# `aws-sdk-health` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     health = Aws::Health::Client.new
#     resp = health.describe_affected_accounts_for_organization(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Health APIs and Notifications are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Health::Errors::ServiceError
#       # rescues all AWS Health APIs and Notifications API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Health

  GEM_VERSION = '1.31.0'

end
