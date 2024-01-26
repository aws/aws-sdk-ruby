# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-bcmdataexports/types'
require_relative 'aws-sdk-bcmdataexports/client_api'
require_relative 'aws-sdk-bcmdataexports/plugins/endpoints.rb'
require_relative 'aws-sdk-bcmdataexports/client'
require_relative 'aws-sdk-bcmdataexports/errors'
require_relative 'aws-sdk-bcmdataexports/resource'
require_relative 'aws-sdk-bcmdataexports/endpoint_parameters'
require_relative 'aws-sdk-bcmdataexports/endpoint_provider'
require_relative 'aws-sdk-bcmdataexports/endpoints'
require_relative 'aws-sdk-bcmdataexports/customizations'

# This module provides support for AWS Billing and Cost Management Data Exports. This module is available in the
# `aws-sdk-bcmdataexports` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bcm_data_exports = Aws::BCMDataExports::Client.new
#     resp = bcm_data_exports.create_export(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing and Cost Management Data Exports are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BCMDataExports::Errors::ServiceError
#       # rescues all AWS Billing and Cost Management Data Exports API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BCMDataExports

  GEM_VERSION = '1.2.0'

end
