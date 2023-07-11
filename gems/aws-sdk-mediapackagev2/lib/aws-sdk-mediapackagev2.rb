# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediapackagev2/types'
require_relative 'aws-sdk-mediapackagev2/client_api'
require_relative 'aws-sdk-mediapackagev2/plugins/endpoints.rb'
require_relative 'aws-sdk-mediapackagev2/client'
require_relative 'aws-sdk-mediapackagev2/errors'
require_relative 'aws-sdk-mediapackagev2/waiters'
require_relative 'aws-sdk-mediapackagev2/resource'
require_relative 'aws-sdk-mediapackagev2/endpoint_parameters'
require_relative 'aws-sdk-mediapackagev2/endpoint_provider'
require_relative 'aws-sdk-mediapackagev2/endpoints'
require_relative 'aws-sdk-mediapackagev2/customizations'

# This module provides support for AWS Elemental MediaPackage v2. This module is available in the
# `aws-sdk-mediapackagev2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_package_v2 = Aws::MediaPackageV2::Client.new
#     resp = media_package_v2.create_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaPackage v2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaPackageV2::Errors::ServiceError
#       # rescues all AWS Elemental MediaPackage v2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaPackageV2

  GEM_VERSION = '1.5.0'

end
