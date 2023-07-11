# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ssmsap/types'
require_relative 'aws-sdk-ssmsap/client_api'
require_relative 'aws-sdk-ssmsap/plugins/endpoints.rb'
require_relative 'aws-sdk-ssmsap/client'
require_relative 'aws-sdk-ssmsap/errors'
require_relative 'aws-sdk-ssmsap/resource'
require_relative 'aws-sdk-ssmsap/endpoint_parameters'
require_relative 'aws-sdk-ssmsap/endpoint_provider'
require_relative 'aws-sdk-ssmsap/endpoints'
require_relative 'aws-sdk-ssmsap/customizations'

# This module provides support for AWS Systems Manager for SAP. This module is available in the
# `aws-sdk-ssmsap` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_sap = Aws::SsmSap::Client.new
#     resp = ssm_sap.delete_resource_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager for SAP are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SsmSap::Errors::ServiceError
#       # rescues all AWS Systems Manager for SAP API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SsmSap

  GEM_VERSION = '1.8.0'

end
