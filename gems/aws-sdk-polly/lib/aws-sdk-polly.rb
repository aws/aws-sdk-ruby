# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:polly)

# This module provides support for Amazon Polly. This module is available in the
# `aws-sdk-polly` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     polly = Aws::Polly::Client.new
#     resp = polly.delete_lexicon(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Polly are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Polly::Errors::ServiceError
#       # rescues all Amazon Polly API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Polly
  autoload :Types, 'aws-sdk-polly/types'
  autoload :ClientApi, 'aws-sdk-polly/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-polly/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-polly/client'
  autoload :Errors, 'aws-sdk-polly/errors'
  autoload :Resource, 'aws-sdk-polly/resource'
  autoload :EndpointParameters, 'aws-sdk-polly/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-polly/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-polly/endpoints'

  GEM_VERSION = '1.102.0'

end

require_relative 'aws-sdk-polly/customizations'
