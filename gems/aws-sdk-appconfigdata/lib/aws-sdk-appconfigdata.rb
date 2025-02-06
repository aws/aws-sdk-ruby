# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appconfigdata)

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
  autoload :Types, 'aws-sdk-appconfigdata/types'
  autoload :ClientApi, 'aws-sdk-appconfigdata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appconfigdata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appconfigdata/client'
  autoload :Errors, 'aws-sdk-appconfigdata/errors'
  autoload :Resource, 'aws-sdk-appconfigdata/resource'
  autoload :EndpointParameters, 'aws-sdk-appconfigdata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appconfigdata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appconfigdata/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-appconfigdata/customizations'
