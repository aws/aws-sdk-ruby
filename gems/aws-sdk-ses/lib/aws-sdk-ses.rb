# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ses)

# This module provides support for Amazon Simple Email Service. This module is available in the
# `aws-sdk-ses` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ses = Aws::SES::Client.new
#     resp = ses.clone_receipt_rule_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Email Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SES::Errors::ServiceError
#       # rescues all Amazon Simple Email Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SES
  autoload :Types, 'aws-sdk-ses/types'
  autoload :ClientApi, 'aws-sdk-ses/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ses/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ses/client'
  autoload :Errors, 'aws-sdk-ses/errors'
  autoload :Waiters, 'aws-sdk-ses/waiters'
  autoload :Resource, 'aws-sdk-ses/resource'
  autoload :EndpointParameters, 'aws-sdk-ses/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ses/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ses/endpoints'

  GEM_VERSION = '1.93.0'

end

require_relative 'aws-sdk-ses/customizations'
