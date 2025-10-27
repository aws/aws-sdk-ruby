# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lex)

# This module provides support for Amazon Lex Runtime Service. This module is available in the
# `aws-sdk-lex` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex = Aws::Lex::Client.new
#     resp = lex.delete_session(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Runtime Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lex::Errors::ServiceError
#       # rescues all Amazon Lex Runtime Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Lex
  autoload :Types, 'aws-sdk-lex/types'
  autoload :ClientApi, 'aws-sdk-lex/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lex/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lex/client'
  autoload :Errors, 'aws-sdk-lex/errors'
  autoload :Resource, 'aws-sdk-lex/resource'
  autoload :EndpointParameters, 'aws-sdk-lex/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lex/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lex/endpoints'

  GEM_VERSION = '1.85.0'

end

require_relative 'aws-sdk-lex/customizations'
