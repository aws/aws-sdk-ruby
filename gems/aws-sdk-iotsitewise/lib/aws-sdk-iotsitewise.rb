# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotsitewise/types'
require_relative 'aws-sdk-iotsitewise/client_api'
require_relative 'aws-sdk-iotsitewise/client'
require_relative 'aws-sdk-iotsitewise/errors'
require_relative 'aws-sdk-iotsitewise/waiters'
require_relative 'aws-sdk-iotsitewise/resource'
require_relative 'aws-sdk-iotsitewise/customizations'

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

  GEM_VERSION = '1.12.0'

end
