# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-emr/types'
require_relative 'aws-sdk-emr/client_api'
require_relative 'aws-sdk-emr/client'
require_relative 'aws-sdk-emr/errors'
require_relative 'aws-sdk-emr/waiters'
require_relative 'aws-sdk-emr/resource'
require_relative 'aws-sdk-emr/customizations'

# This module provides support for Amazon EMR. This module is available in the
# `aws-sdk-emr` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr = Aws::EMR::Client.new
#     resp = emr.add_instance_fleet(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EMR are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMR::Errors::ServiceError
#       # rescues all Amazon EMR API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMR

  GEM_VERSION = '1.56.0'

end
