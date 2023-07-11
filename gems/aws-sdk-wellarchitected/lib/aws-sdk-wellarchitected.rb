# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-wellarchitected/types'
require_relative 'aws-sdk-wellarchitected/client_api'
require_relative 'aws-sdk-wellarchitected/plugins/endpoints.rb'
require_relative 'aws-sdk-wellarchitected/client'
require_relative 'aws-sdk-wellarchitected/errors'
require_relative 'aws-sdk-wellarchitected/resource'
require_relative 'aws-sdk-wellarchitected/endpoint_parameters'
require_relative 'aws-sdk-wellarchitected/endpoint_provider'
require_relative 'aws-sdk-wellarchitected/endpoints'
require_relative 'aws-sdk-wellarchitected/customizations'

# This module provides support for AWS Well-Architected Tool. This module is available in the
# `aws-sdk-wellarchitected` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     well_architected = Aws::WellArchitected::Client.new
#     resp = well_architected.associate_lenses(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Well-Architected Tool are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WellArchitected::Errors::ServiceError
#       # rescues all AWS Well-Architected Tool API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WellArchitected

  GEM_VERSION = '1.28.0'

end
