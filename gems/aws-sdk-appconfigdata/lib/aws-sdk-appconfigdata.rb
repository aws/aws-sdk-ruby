# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appconfigdata/types'
require_relative 'aws-sdk-appconfigdata/client_api'
require_relative 'aws-sdk-appconfigdata/plugins/endpoints.rb'
require_relative 'aws-sdk-appconfigdata/client'
require_relative 'aws-sdk-appconfigdata/errors'
require_relative 'aws-sdk-appconfigdata/resource'
require_relative 'aws-sdk-appconfigdata/endpoint_parameters'
require_relative 'aws-sdk-appconfigdata/endpoint_provider'
require_relative 'aws-sdk-appconfigdata/endpoints'
require_relative 'aws-sdk-appconfigdata/customizations'

# This module provides support for AWS AppConfig Data. This module is available in the
# `aws-sdk-appconfigdata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_config_data = Aws::AppConfigData::Client.new
#     resp = app_config_data.get_latest_configuration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS AppConfig Data are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppConfigData::Errors::ServiceError
#       # rescues all AWS AppConfig Data API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppConfigData

  GEM_VERSION = '1.13.0'

end
