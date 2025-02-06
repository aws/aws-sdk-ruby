# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotsitewise)

# This module provides support for AWS IoT SiteWise. This module is available in the
# `aws-sdk-iotsitewise` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_site_wise = Aws::IoTSiteWise::Client.new
#     resp = io_t_site_wise.associate_assets(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT SiteWise are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTSiteWise::Errors::ServiceError
#       # rescues all AWS IoT SiteWise API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTSiteWise
  autoload :Types, 'aws-sdk-iotsitewise/types'
  autoload :ClientApi, 'aws-sdk-iotsitewise/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotsitewise/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotsitewise/client'
  autoload :Errors, 'aws-sdk-iotsitewise/errors'
  autoload :Waiters, 'aws-sdk-iotsitewise/waiters'
  autoload :Resource, 'aws-sdk-iotsitewise/resource'
  autoload :EndpointParameters, 'aws-sdk-iotsitewise/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotsitewise/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotsitewise/endpoints'
  autoload :EventStreams, 'aws-sdk-iotsitewise/event_streams'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-iotsitewise/customizations'
