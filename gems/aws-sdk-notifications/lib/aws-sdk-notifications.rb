# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:notifications)

# This module provides support for AWS User Notifications. This module is available in the
# `aws-sdk-notifications` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     notifications = Aws::Notifications::Client.new
#     resp = notifications.associate_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS User Notifications are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Notifications::Errors::ServiceError
#       # rescues all AWS User Notifications API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Notifications
  autoload :Types, 'aws-sdk-notifications/types'
  autoload :ClientApi, 'aws-sdk-notifications/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-notifications/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-notifications/client'
  autoload :Errors, 'aws-sdk-notifications/errors'
  autoload :Waiters, 'aws-sdk-notifications/waiters'
  autoload :Resource, 'aws-sdk-notifications/resource'
  autoload :EndpointParameters, 'aws-sdk-notifications/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-notifications/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-notifications/endpoints'

  GEM_VERSION = '1.10.0'

end

require_relative 'aws-sdk-notifications/customizations'
