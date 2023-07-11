# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-vpclattice/types'
require_relative 'aws-sdk-vpclattice/client_api'
require_relative 'aws-sdk-vpclattice/plugins/endpoints.rb'
require_relative 'aws-sdk-vpclattice/client'
require_relative 'aws-sdk-vpclattice/errors'
require_relative 'aws-sdk-vpclattice/resource'
require_relative 'aws-sdk-vpclattice/endpoint_parameters'
require_relative 'aws-sdk-vpclattice/endpoint_provider'
require_relative 'aws-sdk-vpclattice/endpoints'
require_relative 'aws-sdk-vpclattice/customizations'

# This module provides support for Amazon VPC Lattice. This module is available in the
# `aws-sdk-vpclattice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     vpc_lattice = Aws::VPCLattice::Client.new
#     resp = vpc_lattice.batch_update_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon VPC Lattice are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::VPCLattice::Errors::ServiceError
#       # rescues all Amazon VPC Lattice API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::VPCLattice

  GEM_VERSION = '1.6.0'

end
