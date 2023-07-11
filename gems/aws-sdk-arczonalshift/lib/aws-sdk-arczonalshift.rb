# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-arczonalshift/types'
require_relative 'aws-sdk-arczonalshift/client_api'
require_relative 'aws-sdk-arczonalshift/plugins/endpoints.rb'
require_relative 'aws-sdk-arczonalshift/client'
require_relative 'aws-sdk-arczonalshift/errors'
require_relative 'aws-sdk-arczonalshift/resource'
require_relative 'aws-sdk-arczonalshift/endpoint_parameters'
require_relative 'aws-sdk-arczonalshift/endpoint_provider'
require_relative 'aws-sdk-arczonalshift/endpoints'
require_relative 'aws-sdk-arczonalshift/customizations'

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
#     resp = arc_zonal_shift.cancel_zonal_shift(params)
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

  GEM_VERSION = '1.6.0'

end
