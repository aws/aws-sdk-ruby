# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kendra/types'
require_relative 'aws-sdk-kendra/client_api'
require_relative 'aws-sdk-kendra/client'
require_relative 'aws-sdk-kendra/errors'
require_relative 'aws-sdk-kendra/resource'
require_relative 'aws-sdk-kendra/customizations'

# This module provides support for AWSKendraFrontendService. This module is available in the
# `aws-sdk-kendra` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kendra = Aws::Kendra::Client.new
#     resp = kendra.batch_delete_document(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSKendraFrontendService are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Kendra::Errors::ServiceError
#       # rescues all AWSKendraFrontendService API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Kendra

  GEM_VERSION = '1.14.0'

end
