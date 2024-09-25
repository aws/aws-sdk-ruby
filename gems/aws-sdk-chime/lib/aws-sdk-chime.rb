# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:chime)

# This module provides support for Amazon Chime. This module is available in the
# `aws-sdk-chime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime = Aws::Chime::Client.new
#     resp = chime.associate_phone_number_with_user(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Chime::Errors::ServiceError
#       # rescues all Amazon Chime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Chime
  autoload :Types, 'aws-sdk-chime/types'
  autoload :ClientApi, 'aws-sdk-chime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-chime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-chime/client'
  autoload :Errors, 'aws-sdk-chime/errors'
  autoload :Resource, 'aws-sdk-chime/resource'
  autoload :EndpointParameters, 'aws-sdk-chime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-chime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-chime/endpoints'

  GEM_VERSION = '1.95.0'

end

require_relative 'aws-sdk-chime/customizations'
