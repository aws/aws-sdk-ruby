# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-omics/types'
require_relative 'aws-sdk-omics/client_api'
require_relative 'aws-sdk-omics/plugins/endpoints.rb'
require_relative 'aws-sdk-omics/client'
require_relative 'aws-sdk-omics/errors'
require_relative 'aws-sdk-omics/waiters'
require_relative 'aws-sdk-omics/resource'
require_relative 'aws-sdk-omics/endpoint_parameters'
require_relative 'aws-sdk-omics/endpoint_provider'
require_relative 'aws-sdk-omics/endpoints'
require_relative 'aws-sdk-omics/customizations'

# This module provides support for Amazon Omics. This module is available in the
# `aws-sdk-omics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     omics = Aws::Omics::Client.new
#     resp = omics.abort_multipart_read_set_upload(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Omics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Omics::Errors::ServiceError
#       # rescues all Amazon Omics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Omics

  GEM_VERSION = '1.9.0'

end
