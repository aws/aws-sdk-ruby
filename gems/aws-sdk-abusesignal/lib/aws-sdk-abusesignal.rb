# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:abusesignal)

# This module provides support for AWS Abuse Signal API. This module is available in the
# `aws-sdk-abusesignal` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     abuse_signal = Aws::AbuseSignal::Client.new
#     resp = abuse_signal.create_abuse_report(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Abuse Signal API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AbuseSignal::Errors::ServiceError
#       # rescues all AWS Abuse Signal API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AbuseSignal
  autoload :Types, 'aws-sdk-abusesignal/types'
  autoload :ClientApi, 'aws-sdk-abusesignal/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-abusesignal/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-abusesignal/client'
  autoload :Errors, 'aws-sdk-abusesignal/errors'
  autoload :Waiters, 'aws-sdk-abusesignal/waiters'
  autoload :Resource, 'aws-sdk-abusesignal/resource'
  autoload :EndpointParameters, 'aws-sdk-abusesignal/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-abusesignal/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-abusesignal/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-abusesignal/customizations'
