# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appconfig/types'
require_relative 'aws-sdk-appconfig/client_api'
require_relative 'aws-sdk-appconfig/client'
require_relative 'aws-sdk-appconfig/errors'
require_relative 'aws-sdk-appconfig/resource'
require_relative 'aws-sdk-appconfig/customizations'

# This module provides support for Amazon AppConfig. This module is available in the
# `aws-sdk-appconfig` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_config = Aws::AppConfig::Client.new
#     resp = app_config.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon AppConfig are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppConfig::Errors::ServiceError
#       # rescues all Amazon AppConfig API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppConfig

  GEM_VERSION = '1.12.0'

end
