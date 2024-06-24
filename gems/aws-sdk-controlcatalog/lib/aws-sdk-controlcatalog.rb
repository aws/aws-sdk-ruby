# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-controlcatalog/types'
require_relative 'aws-sdk-controlcatalog/client_api'
require_relative 'aws-sdk-controlcatalog/plugins/endpoints.rb'
require_relative 'aws-sdk-controlcatalog/client'
require_relative 'aws-sdk-controlcatalog/errors'
require_relative 'aws-sdk-controlcatalog/resource'
require_relative 'aws-sdk-controlcatalog/endpoint_parameters'
require_relative 'aws-sdk-controlcatalog/endpoint_provider'
require_relative 'aws-sdk-controlcatalog/endpoints'
require_relative 'aws-sdk-controlcatalog/customizations'

# This module provides support for AWS Control Catalog. This module is available in the
# `aws-sdk-controlcatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     control_catalog = Aws::ControlCatalog::Client.new
#     resp = control_catalog.list_common_controls(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Control Catalog are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ControlCatalog::Errors::ServiceError
#       # rescues all AWS Control Catalog API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ControlCatalog

  GEM_VERSION = '1.4.0'

end
