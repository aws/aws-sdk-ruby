# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-batch/types'
require_relative 'aws-sdk-batch/client_api'
require_relative 'aws-sdk-batch/client'
require_relative 'aws-sdk-batch/errors'
require_relative 'aws-sdk-batch/resource'
require_relative 'aws-sdk-batch/customizations'

# This module provides support for AWS Batch. This module is available in the
# `aws-sdk-batch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     batch = Aws::Batch::Client.new
#     resp = batch.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Batch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Batch::Errors::ServiceError
#       # rescues all AWS Batch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Batch

  GEM_VERSION = '1.57.0'

end
