# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediatailor)

# This module provides support for AWS MediaTailor. This module is available in the
# `aws-sdk-mediatailor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_tailor = Aws::MediaTailor::Client.new
#     resp = media_tailor.configure_logs_for_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS MediaTailor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaTailor::Errors::ServiceError
#       # rescues all AWS MediaTailor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaTailor
  autoload :Types, 'aws-sdk-mediatailor/types'
  autoload :ClientApi, 'aws-sdk-mediatailor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediatailor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediatailor/client'
  autoload :Errors, 'aws-sdk-mediatailor/errors'
  autoload :Resource, 'aws-sdk-mediatailor/resource'
  autoload :EndpointParameters, 'aws-sdk-mediatailor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediatailor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediatailor/endpoints'

  GEM_VERSION = '1.95.0'

end

require_relative 'aws-sdk-mediatailor/customizations'
