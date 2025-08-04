# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:arczonalshift)

# This module provides support for AWS ARC - Zonal Shift. This module is available in the
# `aws-sdk-arczonalshift` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     arc_zonal_shift = Aws::ARCZonalShift::Client.new
#     resp = arc_zonal_shift.cancel_practice_run(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS ARC - Zonal Shift are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ARCZonalShift::Errors::ServiceError
#       # rescues all AWS ARC - Zonal Shift API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ARCZonalShift
  autoload :Types, 'aws-sdk-arczonalshift/types'
  autoload :ClientApi, 'aws-sdk-arczonalshift/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-arczonalshift/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-arczonalshift/client'
  autoload :Errors, 'aws-sdk-arczonalshift/errors'
  autoload :Waiters, 'aws-sdk-arczonalshift/waiters'
  autoload :Resource, 'aws-sdk-arczonalshift/resource'
  autoload :EndpointParameters, 'aws-sdk-arczonalshift/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-arczonalshift/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-arczonalshift/endpoints'

  GEM_VERSION = '1.38.0'

end

require_relative 'aws-sdk-arczonalshift/customizations'
