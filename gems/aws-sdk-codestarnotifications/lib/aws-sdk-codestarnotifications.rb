# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-codestarnotifications/types'
require_relative 'aws-sdk-codestarnotifications/client_api'
require_relative 'aws-sdk-codestarnotifications/client'
require_relative 'aws-sdk-codestarnotifications/errors'
require_relative 'aws-sdk-codestarnotifications/resource'
require_relative 'aws-sdk-codestarnotifications/customizations'

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

  GEM_VERSION = '1.8.0'

end
