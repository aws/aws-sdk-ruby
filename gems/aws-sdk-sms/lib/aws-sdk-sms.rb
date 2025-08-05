# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sms)

# This module provides support for AWS Server Migration Service. This module is available in the
# `aws-sdk-sms` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sms = Aws::SMS::Client.new
#     resp = sms.create_app(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Server Migration Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SMS::Errors::ServiceError
#       # rescues all AWS Server Migration Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SMS
  autoload :Types, 'aws-sdk-sms/types'
  autoload :ClientApi, 'aws-sdk-sms/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sms/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sms/client'
  autoload :Errors, 'aws-sdk-sms/errors'
  autoload :Resource, 'aws-sdk-sms/resource'
  autoload :EndpointParameters, 'aws-sdk-sms/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sms/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sms/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-sms/customizations'
