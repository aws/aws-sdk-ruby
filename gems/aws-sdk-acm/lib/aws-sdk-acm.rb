# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:acm)

# This module provides support for AWS Certificate Manager. This module is available in the
# `aws-sdk-acm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     acm = Aws::ACM::Client.new
#     resp = acm.add_tags_to_certificate(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Certificate Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ACM::Errors::ServiceError
#       # rescues all AWS Certificate Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ACM
  autoload :Types, 'aws-sdk-acm/types'
  autoload :ClientApi, 'aws-sdk-acm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-acm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-acm/client'
  autoload :Errors, 'aws-sdk-acm/errors'
  autoload :Waiters, 'aws-sdk-acm/waiters'
  autoload :Resource, 'aws-sdk-acm/resource'
  autoload :EndpointParameters, 'aws-sdk-acm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-acm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-acm/endpoints'

  GEM_VERSION = '1.96.0'

end

require_relative 'aws-sdk-acm/customizations'
