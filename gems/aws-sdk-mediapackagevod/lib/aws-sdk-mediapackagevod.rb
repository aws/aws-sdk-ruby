# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mediapackagevod/types'
require_relative 'aws-sdk-mediapackagevod/client_api'
require_relative 'aws-sdk-mediapackagevod/client'
require_relative 'aws-sdk-mediapackagevod/errors'
require_relative 'aws-sdk-mediapackagevod/resource'
require_relative 'aws-sdk-mediapackagevod/customizations'

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
#     resp = media_package_vod.create_asset(params)
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
# @service
module Aws::MediaPackageVod

  GEM_VERSION = '1.14.0'

end
