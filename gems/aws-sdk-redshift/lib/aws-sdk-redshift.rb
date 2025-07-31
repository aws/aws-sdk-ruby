# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:redshift)

# This module provides support for Amazon Redshift. This module is available in the
# `aws-sdk-redshift` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift = Aws::Redshift::Client.new
#     resp = redshift.accept_reserved_node_exchange(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Redshift are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Redshift::Errors::ServiceError
#       # rescues all Amazon Redshift API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Redshift
  autoload :Types, 'aws-sdk-redshift/types'
  autoload :ClientApi, 'aws-sdk-redshift/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-redshift/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-redshift/client'
  autoload :Errors, 'aws-sdk-redshift/errors'
  autoload :Waiters, 'aws-sdk-redshift/waiters'
  autoload :Resource, 'aws-sdk-redshift/resource'
  autoload :EndpointParameters, 'aws-sdk-redshift/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-redshift/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-redshift/endpoints'

  GEM_VERSION = '1.143.0'

end

require_relative 'aws-sdk-redshift/customizations'
