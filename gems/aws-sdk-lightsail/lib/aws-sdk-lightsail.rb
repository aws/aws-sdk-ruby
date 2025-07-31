# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lightsail)

# This module provides support for Amazon Lightsail. This module is available in the
# `aws-sdk-lightsail` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lightsail = Aws::Lightsail::Client.new
#     resp = lightsail.allocate_static_ip(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lightsail are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lightsail::Errors::ServiceError
#       # rescues all Amazon Lightsail API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Lightsail
  autoload :Types, 'aws-sdk-lightsail/types'
  autoload :ClientApi, 'aws-sdk-lightsail/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lightsail/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lightsail/client'
  autoload :Errors, 'aws-sdk-lightsail/errors'
  autoload :Resource, 'aws-sdk-lightsail/resource'
  autoload :EndpointParameters, 'aws-sdk-lightsail/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lightsail/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lightsail/endpoints'

  GEM_VERSION = '1.113.0'

end

require_relative 'aws-sdk-lightsail/customizations'
