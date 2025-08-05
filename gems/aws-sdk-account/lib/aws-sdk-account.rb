# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:account)

# This module provides support for AWS Account. This module is available in the
# `aws-sdk-account` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     account = Aws::Account::Client.new
#     resp = account.accept_primary_email_update(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Account are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Account::Errors::ServiceError
#       # rescues all AWS Account API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Account
  autoload :Types, 'aws-sdk-account/types'
  autoload :ClientApi, 'aws-sdk-account/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-account/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-account/client'
  autoload :Errors, 'aws-sdk-account/errors'
  autoload :Resource, 'aws-sdk-account/resource'
  autoload :EndpointParameters, 'aws-sdk-account/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-account/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-account/endpoints'

  GEM_VERSION = '1.46.0'

end

require_relative 'aws-sdk-account/customizations'
