# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-osis/types'
require_relative 'aws-sdk-osis/client_api'
require_relative 'aws-sdk-osis/plugins/endpoints.rb'
require_relative 'aws-sdk-osis/client'
require_relative 'aws-sdk-osis/errors'
require_relative 'aws-sdk-osis/resource'
require_relative 'aws-sdk-osis/endpoint_parameters'
require_relative 'aws-sdk-osis/endpoint_provider'
require_relative 'aws-sdk-osis/endpoints'
require_relative 'aws-sdk-osis/customizations'

# This module provides support for Amazon OpenSearch Ingestion. This module is available in the
# `aws-sdk-osis` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     osis = Aws::OSIS::Client.new
#     resp = osis.create_pipeline(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon OpenSearch Ingestion are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OSIS::Errors::ServiceError
#       # rescues all Amazon OpenSearch Ingestion API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OSIS

  GEM_VERSION = '1.6.0'

end
