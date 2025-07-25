# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:detective)

# This module provides support for Amazon Detective. This module is available in the
# `aws-sdk-detective` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     detective = Aws::Detective::Client.new
#     resp = detective.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Detective are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Detective::Errors::ServiceError
#       # rescues all Amazon Detective API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Detective
  autoload :Types, 'aws-sdk-detective/types'
  autoload :ClientApi, 'aws-sdk-detective/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-detective/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-detective/client'
  autoload :Errors, 'aws-sdk-detective/errors'
  autoload :Resource, 'aws-sdk-detective/resource'
  autoload :EndpointParameters, 'aws-sdk-detective/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-detective/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-detective/endpoints'

  GEM_VERSION = '1.69.0'

end

require_relative 'aws-sdk-detective/customizations'
