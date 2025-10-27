# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediapackagevod)

# This module provides support for AWS Elemental MediaPackage VOD. This module is available in the
# `aws-sdk-mediapackagevod` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_package_vod = Aws::MediaPackageVod::Client.new
#     resp = media_package_vod.configure_logs(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaPackage VOD are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaPackageVod::Errors::ServiceError
#       # rescues all AWS Elemental MediaPackage VOD API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaPackageVod
  autoload :Types, 'aws-sdk-mediapackagevod/types'
  autoload :ClientApi, 'aws-sdk-mediapackagevod/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediapackagevod/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediapackagevod/client'
  autoload :Errors, 'aws-sdk-mediapackagevod/errors'
  autoload :Resource, 'aws-sdk-mediapackagevod/resource'
  autoload :EndpointParameters, 'aws-sdk-mediapackagevod/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediapackagevod/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediapackagevod/endpoints'

  GEM_VERSION = '1.77.0'

end

require_relative 'aws-sdk-mediapackagevod/customizations'
