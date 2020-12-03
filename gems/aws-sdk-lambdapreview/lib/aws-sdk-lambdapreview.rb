# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lambdapreview/types'
require_relative 'aws-sdk-lambdapreview/client_api'
require_relative 'aws-sdk-lambdapreview/client'
require_relative 'aws-sdk-lambdapreview/errors'
require_relative 'aws-sdk-lambdapreview/resource'
require_relative 'aws-sdk-lambdapreview/customizations'

# This module provides support for AWS Lambda. This module is available in the
# `aws-sdk-lambdapreview` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda_preview = Aws::LambdaPreview::Client.new
#     resp = lambda_preview.add_event_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lambda are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LambdaPreview::Errors::ServiceError
#       # rescues all AWS Lambda API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LambdaPreview

  GEM_VERSION = '1.24.0'

end
