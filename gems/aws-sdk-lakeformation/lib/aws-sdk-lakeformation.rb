# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lakeformation/types'
require_relative 'aws-sdk-lakeformation/client_api'
require_relative 'aws-sdk-lakeformation/client'
require_relative 'aws-sdk-lakeformation/errors'
require_relative 'aws-sdk-lakeformation/resource'
require_relative 'aws-sdk-lakeformation/customizations'

# This module provides support for AWS Lake Formation. This module is available in the
# `aws-sdk-lakeformation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lake_formation = Aws::LakeFormation::Client.new
#     resp = lake_formation.batch_grant_permissions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lake Formation are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LakeFormation::Errors::ServiceError
#       # rescues all AWS Lake Formation API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LakeFormation

  GEM_VERSION = '1.11.0'

end
