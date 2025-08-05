# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mturk)

# This module provides support for Amazon Mechanical Turk. This module is available in the
# `aws-sdk-mturk` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     m_turk = Aws::MTurk::Client.new
#     resp = m_turk.accept_qualification_request(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Mechanical Turk are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MTurk::Errors::ServiceError
#       # rescues all Amazon Mechanical Turk API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MTurk
  autoload :Types, 'aws-sdk-mturk/types'
  autoload :ClientApi, 'aws-sdk-mturk/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mturk/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mturk/client'
  autoload :Errors, 'aws-sdk-mturk/errors'
  autoload :Resource, 'aws-sdk-mturk/resource'
  autoload :EndpointParameters, 'aws-sdk-mturk/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mturk/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mturk/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-mturk/customizations'
