# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codestarnotifications)

# This module provides support for AWS CodeStar Notifications. This module is available in the
# `aws-sdk-codestarnotifications` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_star_notifications = Aws::CodeStarNotifications::Client.new
#     resp = code_star_notifications.create_notification_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeStar Notifications are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeStarNotifications::Errors::ServiceError
#       # rescues all AWS CodeStar Notifications API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeStarNotifications
  autoload :Types, 'aws-sdk-codestarnotifications/types'
  autoload :ClientApi, 'aws-sdk-codestarnotifications/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codestarnotifications/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codestarnotifications/client'
  autoload :Errors, 'aws-sdk-codestarnotifications/errors'
  autoload :Resource, 'aws-sdk-codestarnotifications/resource'
  autoload :EndpointParameters, 'aws-sdk-codestarnotifications/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codestarnotifications/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codestarnotifications/endpoints'

  GEM_VERSION = '1.53.0'

end

require_relative 'aws-sdk-codestarnotifications/customizations'
