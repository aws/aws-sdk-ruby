# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-qbusiness/types'
require_relative 'aws-sdk-qbusiness/client_api'
require_relative 'aws-sdk-qbusiness/plugins/endpoints.rb'
require_relative 'aws-sdk-qbusiness/client'
require_relative 'aws-sdk-qbusiness/errors'
require_relative 'aws-sdk-qbusiness/resource'
require_relative 'aws-sdk-qbusiness/endpoint_parameters'
require_relative 'aws-sdk-qbusiness/endpoint_provider'
require_relative 'aws-sdk-qbusiness/endpoints'
require_relative 'aws-sdk-qbusiness/customizations'

# This module provides support for QBusiness. This module is available in the
# `aws-sdk-qbusiness` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     q_business = Aws::QBusiness::Client.new
#     resp = q_business.batch_delete_document(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from QBusiness are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QBusiness::Errors::ServiceError
#       # rescues all QBusiness API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QBusiness

  GEM_VERSION = '1.1.0'

end
