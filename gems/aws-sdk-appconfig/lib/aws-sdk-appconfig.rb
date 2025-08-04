# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appconfig)

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
  autoload :Types, 'aws-sdk-appconfig/types'
  autoload :ClientApi, 'aws-sdk-appconfig/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appconfig/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appconfig/client'
  autoload :Errors, 'aws-sdk-appconfig/errors'
  autoload :Waiters, 'aws-sdk-appconfig/waiters'
  autoload :Resource, 'aws-sdk-appconfig/resource'
  autoload :EndpointParameters, 'aws-sdk-appconfig/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appconfig/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appconfig/endpoints'

  GEM_VERSION = '1.70.0'

end

require_relative 'aws-sdk-appconfig/customizations'
