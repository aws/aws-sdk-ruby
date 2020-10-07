# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediapackage/types'
require_relative 'aws-sdk-mediapackage/client_api'
require_relative 'aws-sdk-mediapackage/client'
require_relative 'aws-sdk-mediapackage/errors'
require_relative 'aws-sdk-mediapackage/resource'
require_relative 'aws-sdk-mediapackage/customizations'

# This module provides support for AWS Elemental MediaPackage. This module is available in the
# `aws-sdk-mediapackage` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_package = Aws::MediaPackage::Client.new
#     resp = media_package.configure_logs(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaPackage are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaPackage::Errors::ServiceError
#       # rescues all AWS Elemental MediaPackage API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaPackage

  GEM_VERSION = '1.36.0'

end
